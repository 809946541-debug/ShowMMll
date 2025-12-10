import 'dart:convert';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'global_shared_state.dart';

// 临时的GlobalSharedState默认实现

// 请求异常类
class RequestException implements Exception {
  final int code;
  final String message;

  RequestException({required this.code, required this.message});

  @override
  String toString() {
    return 'RequestException: {code: $code, message: $message}';
  }
}

// 标准响应体
class StandardResponseBody<T> {
  final bool success;
  final int code;
  final String message;
  final T? data;
  final int? total;

  StandardResponseBody({
    required this.success,
    required this.code,
    required this.message,
    this.data,
    this.total,
  });

  factory StandardResponseBody.fromJson(
      Map<String, dynamic> json, T Function(dynamic) fromJsonT) {
    return StandardResponseBody<T>(
      success: (json['code'] ?? 0) >= 0,
      code: json['code'] ?? 0,
      message: json['message'] ?? json['msg'] ?? '',
      data: json['data'] != null ? fromJsonT(json['data']) : null,
      total: json['total'],
    );
  }
}

class HttpClient {
  static final HttpClient _instance = HttpClient._internal();
  late Dio _dio;

  // baseUrl 列表和索引
  static int _baseUrlIndex = GlobalSharedState.baseUrlIndex;
  static List<String> _baseUrls = [
    // "http://192.168.56.1:5001/",
    // "https://api.vervebook.net",
    "http://47.254.135.115:9897/",
  ];

  static String get baseURL {
    return _baseUrls[_baseUrlIndex];
  }

  static void switchBaseURL() {
    _baseUrlIndex = (_baseUrlIndex + 1) % _baseUrls.length;
    GlobalSharedState.setbaseUrlIndex(_baseUrlIndex);
    debugPrint("Switched _baseUrlIndex: $_baseUrlIndex");
  }

  factory HttpClient() {
    return _instance;
  }

  HttpClient._internal() {
    _dio = Dio(BaseOptions(
      baseUrl: baseURL,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json; charset=utf-8',
        'Accept': 'application/json',
      },
    ));

    // 添加请求拦截器
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // 添加默认headers
        final defaultHeaders = {
          'Content-Type': 'application/json',
          'lang': GlobalSharedState.userLanguage == ''
              ? 'en'
              : GlobalSharedState.userLanguage,
          'systemLang': GlobalSharedState.systemLanguage,
          'appCode': 'OneNovel',
          'device': '0',
          'build': '536',
          'version': '536',
          'unionId': GlobalSharedState.deviceId ?? '',
          'tzOffset': GlobalSharedState.timezoneOffset.toString(),
          if (GlobalSharedState.authToken != null)
            'authorization': 'Bearer ${GlobalSharedState.authToken}',
        };
        options.headers.addAll(defaultHeaders);

        // 处理URL格式
        if (options.path.startsWith('/')) {
          options.path = options.path.substring(1);
        }

        debugPrint('请求方法: ${options.method}');
        debugPrint('请求URL: ${options.uri}');
        debugPrint('请求体: ${options.data}');
        return handler.next(options);
      },
      onResponse: (response, handler) {
        debugPrint('响应状态: ${response.statusCode}');
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        debugPrint('请求错误: ${e.message}');
        return handler.next(e);
      },
    ));
  }

  // POST请求，包含重试机制
  Future<dynamic> postRequest(
    String url, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    void Function(int code, dynamic response)? onCode,
  }) async {
    try {
      // 处理URL格式
      String path = url.startsWith('/') ? url.substring(1) : url;
      final response = await _dio.post(
        path,
        data: body,
        options: Options(headers: headers),
      );

      // 响应体校验
      if (response.data == null) {
        throw Exception('响应体为空');
      }

      dynamic data = response.data;
      final code = data['code'] ?? response.statusCode;

      if (onCode != null) {
        onCode(code, data);
      }

      // 处理特定错误码
      if ([400, 401, 403, -406, 406, 404, 409, 422, 500].contains(code)) {
        throw RequestException(
          code: code,
          message: data['msg'] ?? '请求失败',
        );
      }

      if (code == 0) {
        return data;
      } else if (code == -401) {
        // TODO: 实现重启应用功能
        debugPrint('Token过期，需要重启应用');
        return null;
      } else if (code == 1 && data['data'] != null) {
        // 解密数据
        try {
          String key = GlobalSharedState.encoding!.split('-').reversed.join('');
          encrypt.Encrypter encrypter = encrypt.Encrypter(
            encrypt.AES(
              encrypt.Key.fromBase64(base64Encode(utf8.encode(key))),
              mode: encrypt.AESMode.ecb,
              padding: 'PKCS7',
            ),
          );
          String decryptedString = encrypter.decrypt64(data['data']);
          final edata = jsonDecode(decryptedString);
          data['data'] = edata;
          return data;
        } catch (e) {
          debugPrint('解密失败: $e');
          throw Exception('数据解密失败');
        }
      } else {
        throw RequestException(
          code: code,
          message: data['msg'] ?? '请求失败',
        );
      }
    } on RequestException catch (e) {
      // 业务逻辑错误，直接抛出
      debugPrint('业务逻辑错误: ${e.code}, ${e.message}');
      throw e;
    } catch (e) {
      // 网络错误等，尝试重试
      int maxRetry = 10;
      int retryCount = 0;
      Exception? lastException;

      while (retryCount < maxRetry) {
        try {
          // 切换baseUrl并重试
          switchBaseURL();
          // 更新Dio实例的baseUrl
          _dio.options.baseUrl = baseURL;
          retryCount++;
          debugPrint('网络错误，正在重试 ($retryCount/$maxRetry): $e');

          String path = url.startsWith('/') ? url.substring(1) : url;
          final response = await _dio.post(
            path,
            data: body,
            options: Options(headers: headers),
          );

          if (response.data == null) {
            throw Exception('响应体为空');
          }

          dynamic data = response.data;
          final code = data['code'] ?? response.statusCode;

          if (onCode != null) {
            onCode(code, data);
          }

          // 重试时同样检查特定错误码
          if ([400, 401, 403, -406, 406, 404, 409, 422, 500].contains(code)) {
            throw RequestException(
              code: code,
              message: data['msg'] ?? '请求失败',
            );
          }

          if (code == 0) {
            return data;
          } else if (code == -401) {
            debugPrint('Token过期，需要重启应用');
            return null;
          } else if (code == 1 && data['data'] != null) {
            String key =
                GlobalSharedState.encoding!.split('-').reversed.join('');
            encrypt.Encrypter encrypter = encrypt.Encrypter(
              encrypt.AES(
                encrypt.Key.fromBase64(base64Encode(utf8.encode(key))),
                mode: encrypt.AESMode.ecb,
                padding: 'PKCS7',
              ),
            );
            String decryptedString = encrypter.decrypt64(data['data']);
            final edata = jsonDecode(decryptedString);
            data['data'] = edata;
            return data;
          } else {
            throw RequestException(
              code: code,
              message: data['msg'] ?? '请求失败',
            );
          }
        } on RequestException catch (e) {
          // 重试过程中遇到业务逻辑错误，直接抛出
          debugPrint('重试时遇到业务逻辑错误: ${e.code}, ${e.message}');
          throw e;
        } catch (e) {
          lastException = e is Exception ? e : Exception(e.toString());
          // 继续重试
        }
      }
      // 超过最大重试次数
      throw lastException ?? Exception("请求失败，未知错误");
    }
  }

  // 泛型获取数据方法
  Future<StandardResponseBody<T>> fetchData<T>(
    String url, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    void Function(int code, dynamic response)? onCode,
    required T Function(dynamic json) fromJsonT,
  }) async {
    var data =
        await postRequest(url, body: body, headers: headers, onCode: onCode);

    return StandardResponseBody<T>.fromJson(data, fromJsonT);
  }

  // GET请求
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      // 处理URL格式
      if (path.startsWith('/')) {
        path = path.substring(1);
      }
      Response response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      return response.data;
    } catch (e) {
      debugPrint('GET请求失败: $e');
      rethrow;
    }
  }

  // PUT请求
  Future<dynamic> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      if (path.startsWith('/')) {
        path = path.substring(1);
      }
      Response response = await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      return response.data;
    } catch (e) {
      debugPrint('PUT请求失败: $e');
      rethrow;
    }
  }

  // DELETE请求
  Future<dynamic> delete(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      if (path.startsWith('/')) {
        path = path.substring(1);
      }
      Response response = await _dio.delete(
        path,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      return response.data;
    } catch (e) {
      debugPrint('DELETE请求失败: $e');
      rethrow;
    }
  }
}

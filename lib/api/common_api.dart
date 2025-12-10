import '../utils/http_client.dart';

class CommonApi {
  static final HttpClient _httpClient = HttpClient();

  /// 获取应用配置
  static Future<StandardResponseBody<dynamic>> getAppConfig() async {
    try {
      return await _httpClient.fetchData<dynamic>(
        "/readClient/app/readInfo",
        fromJsonT: (json) => json,
      );
    } catch (e) {
      print('获取应用配置失败: $e');
      return StandardResponseBody(
        success: false,
        code: -1,
        message: '获取应用配置失败: $e',
        data: null,
      );
    }
  }

  /// 获取广告数据
  static Future<StandardResponseBody<dynamic>> getAdData(String adCode) async {
    final requestParams = {
      'code': adCode,
    };

    try {
      return await _httpClient.fetchData<dynamic>(
        "/readClient/advertisement/gets",
        body: requestParams,
        fromJsonT: (json) => json,
      );
    } catch (e) {
      print('获取广告数据失败: $e');
      return StandardResponseBody(
        success: false,
        code: -1,
        message: '获取广告数据失败: $e',
        data: null,
      );
    }
  }

  /// 跟踪报告
  static Future<StandardResponseBody<dynamic>> trackReport({
    required String eventName,
    required String trackingId,
    String? advertiserId,
    Map<String, dynamic>? otherData,
  }) async {
    final requestParams = {
      'eventName': eventName,
      'trackingId': trackingId,
      if (advertiserId != null) 'advertiserId': advertiserId,
      ...?otherData,
    };

    try {
      return await _httpClient.fetchData<dynamic>(
        "/readClient/tracking/track",
        body: requestParams,
        fromJsonT: (json) => json,
      );
    } catch (e) {
      print('跟踪报告失败: $e');
      return StandardResponseBody(
        success: false,
        code: -1,
        message: '跟踪报告失败: $e',
        data: null,
      );
    }
  }
}

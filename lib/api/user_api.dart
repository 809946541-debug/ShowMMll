import '../models/user.dart';
import '../utils/http_client.dart';

class UserApi {
  static final HttpClient _httpClient = HttpClient();

  /// 用户登录接口
  static Future<StandardResponseBody<Map<String, dynamic>>> login({
    Map<String, dynamic>? params,
  }) async {
    final requestParams = {
      ...?params,
    };

    try {
      return await _httpClient.fetchData<Map<String, dynamic>>(
        "/readClient/readUser/login",
        body: requestParams,
        fromJsonT: (json) => json as Map<String, dynamic>,
      );
    } catch (e) {
      print('用户登录失败: $e');
      // 返回默认错误响应
      return StandardResponseBody(
        success: false,
        code: -1,
        message: '登录失败: $e',
        data: null,
      );
    }
  }

  /// 获取推荐关键词
  static Future<StandardResponseBody<String>> getRecommendKeyWord() async {
    try {
      return await _httpClient.fetchData<String>(
        "/readUser/GetRecommendKeyWord",
        fromJsonT: (json) => json as String,
      );
    } catch (e) {
      print('获取推荐关键词失败: $e');
      return StandardResponseBody(
        success: false,
        code: -1,
        message: '获取推荐关键词失败: $e',
        data: null,
      );
    }
  }

  /// 获取用户信息
  static Future<StandardResponseBody<Map<String, dynamic>>> info({
    Map<String, dynamic>? params,
  }) async {
    final requestParams = {
      ...?params,
    };

    try {
      return await _httpClient.fetchData<Map<String, dynamic>>(
        "/readClient/readUser/info",
        body: requestParams,
        fromJsonT: (json) => json as Map<String, dynamic>,
      );
    } catch (e) {
      print('获取用户信息失败: $e');
      return StandardResponseBody(
        success: false,
        code: -1,
        message: '获取用户信息失败: $e',
        data: null,
      );
    }
  }

  /// 获取我的用户信息详情
  static Future<StandardResponseBody<UserInfo>> getMyUserInfo() async {
    try {
      final responseBody = await _httpClient.fetchData<Map<String, dynamic>>(
        "/readClient/readUser/get",
        body: {},
        fromJsonT: (json) => json as Map<String, dynamic>,
      );

      // 转换单个用户对象
      final userInfo = _convertToUserInfo(responseBody.data ?? {});
      return StandardResponseBody(
        success: responseBody.success,
        code: responseBody.code,
        message: responseBody.message,
        data: userInfo,
      );
    } catch (e) {
      print('获取我的用户信息失败: $e');
      return StandardResponseBody(
        success: false,
        code: -1,
        message: '获取用户信息失败: $e',
        data: null,
      );
    }
  }

  /// 删除用户
  static Future<void> deleteUser() async {
    try {
      await _httpClient.fetchData<void>(
        "/readClient/readUser/delete",
        body: {},
        fromJsonT: (_) {},
      );
    } catch (e) {
      print('删除用户失败: $e');
      rethrow;
    }
  }

  /// 设置用户配置
  static Future<StandardResponseBody<dynamic>> setConfig({
    required bool isAutoUnlock,
    required bool isReceiveMessage,
  }) async {
    final requestParams = {
      'autoUnLock': isAutoUnlock,
      'allowMsgPush': isReceiveMessage,
    };

    try {
      return await _httpClient.fetchData<dynamic>(
        "/readClient/readUser/setConfig",
        body: requestParams,
        fromJsonT: (json) => json,
      );
    } catch (e) {
      print('设置用户配置失败: $e');
      return StandardResponseBody(
        success: false,
        code: -1,
        message: '设置配置失败: $e',
        data: null,
      );
    }
  }

  // 辅助方法：将API响应数据转换为UserInfo对象
  static UserInfo _convertToUserInfo(Map<String, dynamic> userData) {
    // 处理可能的字段映射差异
    return UserInfo.fromJson(userData);
  }
}

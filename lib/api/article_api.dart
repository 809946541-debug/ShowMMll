import '../models/article.dart';
import '../utils/http_client.dart';

class ArticleApi {
  static final HttpClient _httpClient = HttpClient();

  /// 获取文章列表
  static Future<List<Article>> listCmsArticle({
    int page = 1,
    int pageSize = 20,
    String code = "",
    Map<String, dynamic>? params,
  }) async {
    final requestParams = {
      'code': code,
      'pageCurrent': page,
      'pageSize': pageSize,
      ...?params,
    };

    try {
      final responseBody = await _httpClient.fetchData<List<dynamic>>(
        "/readClient/article/gets",
        body: requestParams,
        fromJsonT: (json) => json as List<dynamic>,
      );

      // 优雅地转换数据格式
      return _convertToArticles(responseBody.data ?? []);
    } catch (e) {
      print('获取文章列表失败: $e');
      // 返回空列表而不是抛出异常
      return [];
    }
  }

  /// 获取文章详情
  static Future<StandardResponseBody<Article>> getCmsArticle({
    String code = "",
    Map<String, dynamic>? params,
  }) async {
    final requestParams = {
      'code': code,
      ...?params,
    };

    try {
      final responseBody = await _httpClient.fetchData<Map<String, dynamic>>(
        "/readClient/article/get",
        body: requestParams,
        fromJsonT: (json) => json as Map<String, dynamic>,
      );

      // 转换单个文章对象
      final article = _convertToArticle(responseBody.data ?? {});
      return StandardResponseBody(
        success: responseBody.success,
        code: responseBody.code,
        message: responseBody.message,
        data: article,
      );
    } catch (e) {
      print('获取文章详情失败: $e');
      return StandardResponseBody(
        success: false,
        code: -1,
        message: '获取文章详情失败: $e',
        data: null,
      );
    }
  }

  /// 获取推荐文章列表
  static Future<StandardResponseBody<List<Article>>> listRecommendArticle({
    int page = 1,
    int pageSize = 20,
    Map<String, dynamic>? params,
  }) async {
    final requestParams = {
      'pageCurrent': page,
      'pageSize': pageSize,
      ...?params,
    };

    try {
      final responseBody = await _httpClient.fetchData<List<dynamic>>(
        "/readClient/article/getsForRecommend",
        body: requestParams,
        fromJsonT: (json) => json as List<dynamic>,
      );

      final articles = _convertToArticles(responseBody.data ?? []);
      return StandardResponseBody(
        success: responseBody.success,
        code: responseBody.code,
        message: responseBody.message,
        data: articles,
        total: responseBody.total,
      );
    } catch (e) {
      print('获取推荐文章列表失败: $e');
      return StandardResponseBody(
        success: false,
        code: -1,
        message: '获取推荐文章列表失败: $e',
        data: null,
      );
    }
  }

  /// 获取热门文章列表
  static Future<StandardResponseBody<List<Article>>> listPopularArticle({
    int page = 1,
    int pageSize = 20,
    Map<String, dynamic>? params,
  }) async {
    final requestParams = {
      'pageCurrent': page,
      'pageSize': pageSize,
      ...?params,
    };

    try {
      final responseBody = await _httpClient.fetchData<List<dynamic>>(
        "/readClient/article/getsForPopular",
        body: requestParams,
        fromJsonT: (json) => json as List<dynamic>,
      );

      final articles = _convertToArticles(responseBody.data ?? []);
      return StandardResponseBody(
        success: responseBody.success,
        code: responseBody.code,
        message: responseBody.message,
        data: articles,
        total: responseBody.total,
      );
    } catch (e) {
      print('获取热门文章列表失败: $e');
      return StandardResponseBody(
        success: false,
        code: -1,
        message: '获取热门文章列表失败: $e',
        data: null,
      );
    }
  }

  // 辅助方法：将API响应数据转换为Article列表
  static List<Article> _convertToArticles(List<dynamic> dataList) {
    return dataList.map((item) {
      return Article.fromJson(item as Map<String, dynamic>);
    }).toList();
  }

  // 辅助方法：将单个API响应数据转换为Article对象
  static Article _convertToArticle(Map<String, dynamic> articleData) {
    // 处理可能的字段映射差异
    return Article.fromJson(articleData);
  }
}

import '../utils/http_client.dart';
import '../models/novel.dart';
import '../models/chapter.dart';

class BookApi {
  static final HttpClient _httpClient = HttpClient();

  /// 书本列表接口
  static Future<List<Novel>> getBooksList({
    int page = 1,
    int pageSize = 20,
    String catalogId = '',
    Map<String, dynamic>? params,
  }) async {
    final requestParams = {
      'pageCurrent': page,
      'pageSize': pageSize,
      'catalogId': catalogId,
      ...?params,
    };

    try {
      final responseBody = await _httpClient.fetchData<List<dynamic>>(
        "/posts", // 使用测试API的端点
        body: requestParams,
        fromJsonT: (json) => json as List<dynamic>,
      );

      // 优雅地转换数据格式
      return _convertToNovels(responseBody.data ?? []);
    } catch (e) {
      print('获取书籍列表失败: $e');
      // 返回空列表而不是抛出异常
      return [];
    }
  }

  /// 获取已浏览书籍列表
  static Future<List<Novel>> getViewedBookList({
    int page = 1,
    int pageSize = 20,
    Map<String, dynamic>? params,
  }) async {
    final requestParams = {
      'pageCurrent': page,
      'pageSize': pageSize,
      ...?params,
    };

    final responseBody = await _httpClient.fetchData<List<dynamic>>(
      "/readClient/book/getsForView",
      body: requestParams,
      fromJsonT: (json) => json as List<dynamic>,
    );

    return _convertToNovels(responseBody.data ?? []);
  }

  /// 获取收藏书籍列表
  static Future<StandardResponseBody<List<Novel>>> listFavoriteBook(
    int pageNum,
    int pageSize,
  ) async {
    final requestParams = {
      'pageCurrent': pageNum,
      'pageSize': pageSize,
    };

    final responseBody = await _httpClient.fetchData<List<dynamic>>(
      "/readClient/book/getsForFavourite",
      body: requestParams,
      fromJsonT: (json) => json as List<dynamic>,
    );

    // 转换数据并保持原有响应结构
    final novels = _convertToNovels(responseBody.data ?? []);
    return StandardResponseBody(
      success: responseBody.success,
      code: responseBody.code,
      message: responseBody.message,
      data: novels,
    );
  }

  /// 获取推荐书籍列表
  static Future<StandardResponseBody<List<Novel>>> listReadRecommendBook(
    int pageNum,
    int pageSize,
  ) async {
    final requestParams = {
      'pageCurrent': pageNum,
      'pageSize': pageSize,
    };

    final responseBody = await _httpClient.fetchData<List<dynamic>>(
      "/readClient/book/getsForRecommend",
      body: requestParams,
      fromJsonT: (json) => json as List<dynamic>,
    );

    final novels = _convertToNovels(responseBody.data ?? []);
    return StandardResponseBody(
      success: responseBody.success,
      code: responseBody.code,
      message: responseBody.message,
      data: novels,
    );
  }

  /// 收藏书籍
  static Future<dynamic> favoriteBook(String bookId) {
    return _httpClient.postRequest(
      '/readClient/book/favourite',
      body: {
        'id': bookId,
      },
    );
  }

  /// 取消收藏书籍
  static Future<dynamic> disFavoriteBook(String bookId) {
    return _httpClient.postRequest(
      '/readClient/book/unFavourite',
      body: {
        'id': bookId,
      },
    );
  }

  /// 订阅书籍
  static Future<dynamic> monthlySubscription(String bookId) {
    return _httpClient.postRequest(
      '/readClient/book/monthlySubscription',
      body: {
        'bookId': bookId,
      },
    );
  }

  /// 更改订阅书籍
  static Future<dynamic> changeMonthlySubscription(
      String bookId, String newBookId) {
    return _httpClient.postRequest(
      '/readClient/book/changeMonthlySubscription',
      body: {
        'bookId': newBookId,
        'oldBookId': bookId,
      },
    );
  }

  /// 获取书籍详情
  static Future<StandardResponseBody<Novel>> getBookInfo(String bookId) {
    return _httpClient
        .fetchData<Map<String, dynamic>>(
      "/readClient/book/get",
      body: {
        'id': bookId,
      },
      fromJsonT: (json) => json as Map<String, dynamic>,
    )
        .then((response) {
      // 转换单个书籍对象
      final novel = _convertToNovel(response.data ?? {});
      return StandardResponseBody(
        success: response.success,
        code: response.code,
        message: response.message,
        data: novel,
      );
    });
  }

  /// 获取章节列表
  static Future<StandardResponseBody<List<Chapter>>> getChapterList(
    String bookId, {
    int? pageNum,
    int? pageSize,
    bool? isShort,
  }) async {
    final Map<String, dynamic> queryData = {
      'bookId': bookId,
    };
    if (pageNum != null) queryData['pageCurrent'] = pageNum;
    if (pageSize != null) queryData['pageSize'] = pageSize;
    if (isShort != null) queryData['isShort'] = isShort;

    final responseBody = await _httpClient.fetchData<List<dynamic>>(
      '/readClient/chapter/gets',
      body: queryData,
      fromJsonT: (json) => json as List<dynamic>,
    );

    // 转换章节数据
    final chapters = (responseBody.data ?? []).map((item) {
      final chapterData = item as Map<String, dynamic>;
      return Chapter.fromJson(chapterData);
    }).toList();

    return StandardResponseBody(
      success: responseBody.success,
      code: responseBody.code,
      message: responseBody.message,
      data: chapters,
    );
  }

  /// 搜索书籍
  static Future<StandardResponseBody<List<Novel>>> searchBook({
    String? keyword,
    String? categoryId,
    List<String>? ids,
    String? tag,
    int? pageNum,
    int? pageSize,
  }) async {
    final Map<String, dynamic> queryData = {};
    if (keyword != null && keyword.isNotEmpty) {
      queryData['multiword'] = keyword;
    }
    if (categoryId != null && categoryId.isNotEmpty) {
      queryData['catalogId'] = categoryId;
    }
    if (ids != null) {
      queryData['ids'] = ids;
    }
    if (tag != null && tag.isNotEmpty) {
      queryData['tag'] = tag;
    }
    if (pageNum != null) {
      queryData['pageCurrent'] = pageNum;
    }
    if (pageSize != null) {
      queryData['pageSize'] = pageSize;
    }

    final responseBody = await _httpClient.fetchData<List<dynamic>>(
      '/readClient/book/gets',
      body: queryData,
      fromJsonT: (json) => json as List<dynamic>,
    );

    final novels = _convertToNovels(responseBody.data ?? []);
    return StandardResponseBody(
      success: responseBody.success,
      code: responseBody.code,
      message: responseBody.message,
      data: novels,
    );
  }

  /// 获取章节音频列表
  static Future<StandardResponseBody<List<dynamic>>> getChapterAudioList(
    String bookId, {
    int? pageNum,
    int? pageSize,
    bool? isShort,
  }) async {
    final Map<String, dynamic> queryData = {
      'bookId': bookId,
    };
    if (pageNum != null) queryData['pageCurrent'] = pageNum;
    if (pageSize != null) queryData['pageSize'] = pageSize;
    if (isShort != null) queryData['isShort'] = isShort;

    return _httpClient.fetchData<List<dynamic>>(
      '/readClient/chapterAudio/gets',
      body: queryData,
      fromJsonT: (json) => json is List ? json : [],
    );
  }

  // 辅助方法：将API响应数据转换为Novel列表
  static List<Novel> _convertToNovels(List<dynamic> dataList) {
    return dataList.map((item) {
      return Novel.fromJson(item as Map<String, dynamic>);
    }).toList();
  }

  // 辅助方法：将单个API响应数据转换为Novel对象
  static Novel _convertToNovel(Map<String, dynamic> bookData) {
    // 处理可能的字段映射差异
    return Novel.fromJson(bookData);
  }
}

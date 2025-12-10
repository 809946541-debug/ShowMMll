import '../models/chapter.dart';
import '../utils/http_client.dart';

class ChapterApi {
  static final HttpClient _httpClient = HttpClient();
  /// 书本列表接口

  static Future<StandardResponseBody<Chapter>> getChapter({
    String bookId = "",
    int no = 1,
    Map<String, dynamic>? params,
  }) async {
    final requestParams = {
      'bookId': bookId,
      'no': no,
      ...?params,
    };
      final responseBody = await _httpClient.fetchData<Chapter>(
        "/readClient/chapter/get",
        body: requestParams,
      fromJsonT: (json) => Chapter.fromJson(json as Map<String, dynamic>),
      );
    return responseBody;
  }

  static Future<StandardResponseBody<dynamic>> unlockChapter({
    required String bookId,
    required int no,
  }) async {
    final requestParams = {
      'bookId': bookId,
      'no': no,
    };
      final responseBody = await _httpClient.fetchData<dynamic>(
        "/readClient/chapter/unLock",
        body: requestParams,
      fromJsonT: (json) => json,
      );
    return responseBody;
  }

  // 可继续添加书本相关接口
  // static const String bookDetailUrl = "/books/detail";
}
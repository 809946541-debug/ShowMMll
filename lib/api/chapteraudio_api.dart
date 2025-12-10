import '../models/chapteraudio.dart';
import '../utils/http_client.dart';

class ChapterAudioApi {
  static final HttpClient _httpClient = HttpClient();

  /// 获取章节音频详情
  static Future<StandardResponseBody<ChapterAudioDetailDto>> getChapter({
    required String bookId,
    required int no,
    Map<String, dynamic>? params,
  }) async {
    final requestParams = {
      'bookId': bookId,
      'no': no,
      ...?params,
    };

    try {
      final responseBody = await _httpClient.fetchData<Map<String, dynamic>>(
        "/readClient/chapterAudio/get",
        body: requestParams,
        fromJsonT: (json) => json as Map<String, dynamic>,
      );

      // 转换单个章节音频对象
      final chapterAudio = _convertToChapterAudio(responseBody.data ?? {});
      return StandardResponseBody(
        success: responseBody.success,
        code: responseBody.code,
        message: responseBody.message,
        data: chapterAudio,
      );
    } catch (e) {
      print('获取章节音频详情失败: $e');
      return StandardResponseBody(
        success: false,
        code: -1,
        message: '获取章节音频详情失败: $e',
        data: null,
      );
    }
  }

  /// 获取章节音频列表
  static Future<StandardResponseBody<List<ChapterAudioDetailDto>>>
      getChapterList({
    required String bookId,
    int page = 1,
    int pageSize = 20,
    Map<String, dynamic>? params,
  }) async {
    final requestParams = {
      'bookId': bookId,
      'pageCurrent': page,
      'pageSize': pageSize,
      ...?params,
    };

    try {
      final responseBody = await _httpClient.fetchData<List<dynamic>>(
        "/readClient/chapterAudio/gets",
        body: requestParams,
        fromJsonT: (json) => json as List<dynamic>,
      );

      // 转换章节音频列表
      final chapterAudios = _convertToChapterAudios(responseBody.data ?? []);
      return StandardResponseBody(
        success: responseBody.success,
        code: responseBody.code,
        message: responseBody.message,
        data: chapterAudios,
        total: responseBody.total,
      );
    } catch (e) {
      print('获取章节音频列表失败: $e');
      return StandardResponseBody(
        success: false,
        code: -1,
        message: '获取章节音频列表失败: $e',
        data: null,
      );
    }
  }

  /// 获取下一章节音频
  static Future<StandardResponseBody<ChapterAudioDetailDto>> getNextChapter({
    required String bookId,
    required int currentNo,
    Map<String, dynamic>? params,
  }) async {
    final requestParams = {
      'bookId': bookId,
      'currentNo': currentNo,
      ...?params,
    };

    try {
      final responseBody = await _httpClient.fetchData<Map<String, dynamic>>(
        "/readClient/chapterAudio/getNext",
        body: requestParams,
        fromJsonT: (json) => json as Map<String, dynamic>,
      );

      final chapterAudio = _convertToChapterAudio(responseBody.data ?? {});
      return StandardResponseBody(
        success: responseBody.success,
        code: responseBody.code,
        message: responseBody.message,
        data: chapterAudio,
      );
    } catch (e) {
      print('获取下一章节音频失败: $e');
      return StandardResponseBody(
        success: false,
        code: -1,
        message: '获取下一章节音频失败: $e',
        data: null,
      );
    }
  }

  /// 获取上一章节音频
  static Future<StandardResponseBody<ChapterAudioDetailDto>>
      getPreviousChapter({
    required String bookId,
    required int currentNo,
    Map<String, dynamic>? params,
  }) async {
    final requestParams = {
      'bookId': bookId,
      'currentNo': currentNo,
      ...?params,
    };

    try {
      final responseBody = await _httpClient.fetchData<Map<String, dynamic>>(
        "/readClient/chapterAudio/getPrevious",
        body: requestParams,
        fromJsonT: (json) => json as Map<String, dynamic>,
      );

      final chapterAudio = _convertToChapterAudio(responseBody.data ?? {});
      return StandardResponseBody(
        success: responseBody.success,
        code: responseBody.code,
        message: responseBody.message,
        data: chapterAudio,
      );
    } catch (e) {
      print('获取上一章节音频失败: $e');
      return StandardResponseBody(
        success: false,
        code: -1,
        message: '获取上一章节音频失败: $e',
        data: null,
      );
    }
  }

  /// 标记章节为已播放
  static Future<StandardResponseBody<dynamic>> markChapterAsPlayed({
    required String bookId,
    required int chapterNo,
    Map<String, dynamic>? params,
  }) async {
    final requestParams = {
      'bookId': bookId,
      'chapterNo': chapterNo,
      ...?params,
    };

    try {
      return await _httpClient.fetchData<dynamic>(
        "/readClient/chapterAudio/markPlayed",
        body: requestParams,
        fromJsonT: (json) => json,
      );
    } catch (e) {
      print('标记章节为已播放失败: $e');
      return StandardResponseBody(
        success: false,
        code: -1,
        message: '标记章节为已播放失败: $e',
        data: null,
      );
    }
  }

  // 辅助方法：将API响应数据转换为ChapterAudioDetailDto列表
  static List<ChapterAudioDetailDto> _convertToChapterAudios(
      List<dynamic> dataList) {
    return dataList.map((item) {
      return ChapterAudioDetailDto.fromJson(item as Map<String, dynamic>);
    }).toList();
  }

  // 辅助方法：将单个API响应数据转换为ChapterAudioDetailDto对象
  static ChapterAudioDetailDto _convertToChapterAudio(
      Map<String, dynamic> chapterAudioData) {
    // 处理可能的字段映射差异
    return ChapterAudioDetailDto.fromJson(chapterAudioData);
  }
}

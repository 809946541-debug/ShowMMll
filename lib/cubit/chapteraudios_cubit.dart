import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../api/book_api.dart';

import '../models/chapteraudio.dart';
import '../utils/http_client.dart';

class ChapterListAudioCubit extends Cubit<List<ChapterAudioDetailDto?>> {
  final int _pageSize = 200;

  final String bookId;
  final int chapterCount;

  final List<int> _loadedPageList = [];

  bool isRequesting = false;

  ChapterListAudioCubit({required this.bookId, required this.chapterCount})
      : super(List.filled(chapterCount, null));

  tryLoadPageData(int pageNum) async {
    if (_loadedPageList.contains(pageNum) || isRequesting) {
      return;
    }
    isRequesting = true;
    List<ChapterAudioDetailDto?> chapterList = state;
    List<ChapterAudioDetailDto?> newChapterList =
        List.filled(chapterCount, null);
    newChapterList.setRange(0, chapterList.length, chapterList);
    StandardResponseBody<List<dynamic>> standardResponseBody =
        await BookApi.getChapterAudioList(bookId,
            pageNum: pageNum, pageSize: _pageSize);
    List<ChapterAudioDetailDto> chapterListData = (standardResponseBody.data ??
            [])
        .map((e) => ChapterAudioDetailDto.fromJson(e as Map<String, dynamic>))
        .toList();
    int beginIndex = max((pageNum - 1) * _pageSize, 0);
    int endIndex = min(
      ((pageNum - 1) * _pageSize + chapterListData.length),
      chapterCount,
    );
    debugPrint('beginIndex: $beginIndex, endIndex: $endIndex');
    newChapterList.setRange(
      beginIndex,
      endIndex,
      chapterListData,
    );
    _loadedPageList.add(pageNum);
    emit(newChapterList);
    isRequesting = false;
  }
}

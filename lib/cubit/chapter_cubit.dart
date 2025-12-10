import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../api/book_api.dart';

import '../models/chapter.dart';
import '../utils/http_client.dart';

class ChapterListCubit extends Cubit<List<Chapter?>> {
  final int _pageSize = 200;

  final String bookId;
  final int chapterCount;

  final List<int> _loadedPageList = [];

  bool isRequesting = false;

  ChapterListCubit({required this.bookId, required this.chapterCount})
      : super(List.filled(chapterCount, null));

  tryLoadPageData(int pageNum) async {
    if (_loadedPageList.contains(pageNum) || isRequesting) {
      return;
    }
    isRequesting = true;
    List<Chapter?> chapterList = state;
    List<Chapter?> newChapterList = List.filled(chapterCount, null);
    newChapterList.setRange(0, chapterList.length, chapterList);
    StandardResponseBody<List<Chapter>> standardResponseBody =
        await BookApi.getChapterList(bookId,
            pageNum: pageNum, pageSize: _pageSize);
    List<Chapter> chapterListData = standardResponseBody.data ?? [];
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
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:quiver/strings.dart';

import '../api/book_api.dart';
import '../api/user_api.dart';
import '../models/novel.dart';
import '../utils/http_client.dart';
import '../utils/storage.dart';

const String keywordHistoryKey = 'search_history';

class SearchPageState {
  final bool isShowSearchHistory;
  List<Novel>? searchNovelList;
  List<String>? searchKeywordHistory;
  List<String>? recommendKeyword;

  SearchPageState({
    this.searchNovelList,
    this.searchKeywordHistory,
    this.recommendKeyword,
    required this.isShowSearchHistory,
  });
}

class SearchPageStateCubit extends Cubit<SearchPageState> {
  SearchPageStateCubit() : super(SearchPageState(isShowSearchHistory: false));

  List<String>? _recommendKeyWordList;

  List<Novel> _resolveData(bookJsonList) {
    return bookJsonList
        .map<Novel>((element) => Novel.fromJson(element))
        .toList();
  }

  resetSearch() async {
    StorageUtil storageUtil = await StorageUtil.getInstance();
    String? historyString = await storageUtil.get(keywordHistoryKey);
    if (isEmpty(historyString)) {
      historyString = '';
    }
    Set<String> historyList = historyString!.split(',').toSet();
    historyList.removeWhere((element) => element.isEmpty);
    emit(
      SearchPageState(
        searchKeywordHistory: historyList.toList(),
        recommendKeyword: _recommendKeyWordList,
        isShowSearchHistory: true,
      ),
    );
  }

  reloadSearchHistory() async {
    StorageUtil storageUtil = await StorageUtil.getInstance();
    String? historyString = await storageUtil.get(keywordHistoryKey);
    if (isEmpty(historyString)) {
      historyString = '';
    }
    UserApi.getRecommendKeyWord().then((value) {
      if (value.success && value.data != null) {
        _recommendKeyWordList = value.data!.split(',');
        _recommendKeyWordList!.removeWhere((element) => element.isEmpty);
      }
      Set<String> historyList = historyString!.split(',').toSet();
      historyList.removeWhere((element) => element.isEmpty);
      emit(
        SearchPageState(
          searchKeywordHistory: historyList.toList(),
          recommendKeyword: _recommendKeyWordList,
          isShowSearchHistory: true,
        ),
      );
    });
  }

  beginSearch(String keyword) async {
    if (isEmpty(keyword)) {
      return;
    }
    keyword = keyword.trim();
    try {
      EasyLoading.show(status: 'Searching...');
      StandardResponseBody<List<Novel>> standardResponseBody =
          await BookApi.searchBook(keyword: keyword);
      List<Novel> searchNovelResult = standardResponseBody.data ?? [];
      // print('searchNovelResult: $searchNovelResult');
      emit(
        SearchPageState(
          isShowSearchHistory: false,
          searchNovelList: searchNovelResult,
        ),
      );
      addHistorySearch(keyword);
    } on DioException catch (e) {
      EasyLoading.showError(e.message ?? '');
    } finally {
      EasyLoading.dismiss();
    }
  }

  addHistorySearch(String keyword) async {
    StorageUtil storageUtil = await StorageUtil.getInstance();
    String? historyString = await storageUtil.get(keywordHistoryKey);
    if (isEmpty(historyString)) {
      historyString = '';
    }
    List<String> historyArray = historyString!.split(',');
    historyArray.remove('');
    historyArray.add(keyword);
    if (historyArray.length > 20) {
      historyArray = historyArray.sublist(0, 19);
    }
    storageUtil.setString(keywordHistoryKey, historyArray.join(','));
  }

  clearHistorySearch() async {
    StorageUtil storageUtil = await StorageUtil.getInstance();
    storageUtil.setString(keywordHistoryKey, '');
    reloadSearchHistory();
  }
}

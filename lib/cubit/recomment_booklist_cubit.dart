import 'package:flutter_bloc/flutter_bloc.dart';

import '../api/book_api.dart';
import '../models/novel.dart';
import '../utils/http_client.dart';

class ReadRecommendBookListCubit extends Cubit<ReadRecommendBookListStatus> {
  int _pageNum = 1;
  final int _pageSize = 20;

  int? _total;

  // bool isLoading = true;

  // ReadRecommendBookListCubit() : super(List.empty()) {
  //   refreshList();
  // }

  ReadRecommendBookListCubit() : super(ReadRecommendBookListStatus.initial()) {
    // 不在构造函数中立即加载数据，由UI控制加载时机
    refreshList();
  }

  refreshList() async {
    _total = null;
    _pageNum = 1;

    emit(state.changeStatus(loading: true));
    try {
      StandardResponseBody standardResponseBody =
          await BookApi.listReadRecommendBook(
        _pageNum,
        _pageSize,
      );
      int totalCount = standardResponseBody.total ?? 0;
      _total = totalCount;
      _pageNum++;
      print('ReadRecommendBookListCubit data: ${standardResponseBody.data}');
      print(
          'ReadRecommendBookListCubit data type: ${standardResponseBody.data.runtimeType}');
      emit(state.changeStatus(
        data: standardResponseBody.data ?? [],
        loading: false,
      ));
      return totalCount;
    } catch (e) {
      emit(state.changeStatus(
        data: [],
        loading: false,
      ));
      return 0;
    }
  }
}

class ReadRecommendBookListStatus {
  final List<Novel>? data;
  final bool loading;

  ReadRecommendBookListStatus({
    this.data,
    required this.loading,
  });

  factory ReadRecommendBookListStatus.initial() {
    return ReadRecommendBookListStatus(data: null, loading: false);
  }
  ReadRecommendBookListStatus changeStatus({
    List<Novel>? data,
    bool? loading,
  }) {
    return ReadRecommendBookListStatus(
      data: data ?? this.data,
      loading: loading ?? this.loading,
    );
  }
}

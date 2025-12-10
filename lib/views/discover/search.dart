import 'package:readindex/utils/intl.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../component/search_bar.dart' as search_bar;
import '../../cubit/search_page_cubit.dart';
import '../../models/novel.dart';
import '../../utils/color.dart';

class LibrarySearchPage extends StatefulWidget {
  final Map arguments;

  const LibrarySearchPage({Key? key, required this.arguments})
      : super(key: key);

  @override
  State<LibrarySearchPage> createState() => _LibrarySearchPageState();
}

class _LibrarySearchPageState extends State<LibrarySearchPage> {
  final TextEditingController _controller = TextEditingController();

  _buildSearchHistoryKeyword(BuildContext context, int index, String keyword) {
    return GestureDetector(
      onTap: () {
        context.read<SearchPageStateCubit>().beginSearch(keyword);
        _controller.text = keyword;
      },
      child: Chip(
        padding: EdgeInsets.all(4.w),
        backgroundColor: HexColor('#f6f6f6'),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        label: Text(keyword, style: TextStyle(color: HexColor('#636363'))),
        // backgroundColor: Colors.white,
      ),
    );
  }

  Widget _makeNovelWidget(BuildContext context, Novel book) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          '/book/info',
          arguments: {
            'bookId': book.id,
          },
        );
      },
      child: Container(
        padding: EdgeInsets.only(
          // left: 16.w,
          // right: 16.w,
          top: 16.w,
          bottom: 16.w,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: book.coverThumb ?? '',
                errorWidget: (context, url, error) => Image.asset(
                  'assets/image/image_placeholder.jpg',
                  fit: BoxFit.cover,
                ),
                fit: BoxFit.cover,
                width: 72.w,
              ),
            ),
            SizedBox(
              width: 12.w,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 4.w,
                  bottom: 4.w,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      book.title ?? '',
                      maxLines: 1,
                      style: TextStyle(
                        height: 1.0,
                        fontSize: 16.sp,
                        color: HexColor('#1B1B1B'),
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 12.w),
                      child: Text(
                        book.summaryShort ?? '',
                        maxLines: 3,
                        style: TextStyle(
                          height: 1.4,
                          fontSize: 12.sp,
                          color: HexColor('#636363'),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget _makeNovelWidget(BuildContext context, Novel book) {
  //   return GestureDetector(
  //     onTap: () {
  //       Navigator.of(context).pushNamed(
  //         '/book/info',
  //         arguments: {
  //           'bookId': book.id,
  //         },
  //       );
  //     },
  //     child: SizedBox(
  //       height: 107.w,
  //       child: Row(
  //         children: [
  //           ClipRRect(
  //             borderRadius: BorderRadius.circular(8),
  //             child: CachedNetworkImage(
  //               imageUrl: book.cover ?? 'https://picsum.photos/250?image=9',
  //               fit: BoxFit.cover,
  //               width: 78.w,
  //               height: 104.w,
  //             ),
  //           ),
  //           Padding(
  //             padding: EdgeInsets.only(
  //               left: 12.w,
  //               top: 4.w,
  //               bottom: 4.w,
  //             ),
  //             child: SizedBox(
  //               width: 230.w,
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   Text(
  //                     book.title ?? '',
  //                     style: TextStyle(
  //                       fontSize: 16.sp,
  //                       color: HexColor('#1B1B1B'),
  //                       overflow: TextOverflow.ellipsis,
  //                       fontWeight: FontWeight.w500,
  //                     ),
  //                   ),
  //                   Text(
  //                     book.summary ?? '',
  //                     maxLines: 3,
  //                     style: TextStyle(
  //                       height: 1.5,
  //                       fontSize: 12.sp,
  //                       color: HexColor('#636363'),
  //                       overflow: TextOverflow.ellipsis,
  //                     ),
  //                   )
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchPageStateCubit>(
      create: (context) {
        SearchPageStateCubit searchPageStateCubit = SearchPageStateCubit();
        searchPageStateCubit.reloadSearchHistory();
        return searchPageStateCubit;
      },
      child: Scaffold(
        backgroundColor: HexColor("#ffffff"),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: BlocBuilder<SearchPageStateCubit, SearchPageState>(
              builder: (context, SearchPageState searchPageState) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8.w),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () {
                              Navigator.of(context).maybePop();
                            },
                            child: Container(
                              padding: EdgeInsets.all(4.w),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.black,
                                size: 22.w,
                              ),
                            ),
                          ),
                          Expanded(
                            child: search_bar.SearchBar(
                              controller: _controller,
                              key: const Key('search_bar'),
                              onSubmit: (String keyword) {
                                context
                                    .read<SearchPageStateCubit>()
                                    .beginSearch(keyword);
                              },
                              onClear: () {
                                context
                                    .read<SearchPageStateCubit>()
                                    .resetSearch();
                              },
                            ),
                          ),
                          // Padding(
                          //   padding: EdgeInsets.only(left: 16.w),
                          //   child: GestureDetector(
                          //     onTap: () {
                          //       Navigator.of(context).pop();
                          //     },
                          //     child: Text(
                          //       'Cancel'.g11n('App_Cancel'),
                          //       style: TextStyle(
                          //         color: HexColor('#1B1B1B'),
                          //         fontSize: 14.sp,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    searchPageState.isShowSearchHistory
                        ? Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 12.w, bottom: 8.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  (searchPageState.searchKeywordHistory ?? [])
                                          .isNotEmpty
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 8.w),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '搜索历史'.g11n(
                                                      'Search_HistoryTitle',
                                                    ),
                                                    style: TextStyle(
                                                      fontSize: 15.sp,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      context
                                                          .read<
                                                              SearchPageStateCubit>()
                                                          .clearHistorySearch();
                                                    },
                                                    child: Icon(
                                                      Icons.delete_rounded,
                                                      size: 20.w,
                                                      color:
                                                          HexColor('#8A8A8A'),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 8.w),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: Wrap(
                                                    spacing: 8.w,
                                                    runSpacing: 8.w,
                                                    children: List.generate(
                                                        searchPageState
                                                                .searchKeywordHistory
                                                                ?.length ??
                                                            0, (index) {
                                                      return _buildSearchHistoryKeyword(
                                                        context,
                                                        index,
                                                        searchPageState
                                                                .searchKeywordHistory![
                                                            index],
                                                      );
                                                    }),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      : const SizedBox.shrink(),
                                  (searchPageState.recommendKeyword?.length ??
                                              0) !=
                                          0
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 8.w),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 8.w),
                                                child: Text(
                                                  '热门搜索'.g11n(
                                                    'Search_KeywordTitle',
                                                  ),
                                                  style: TextStyle(
                                                    fontSize: 15.sp,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 8.w),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: Wrap(
                                                    spacing: 8.w,
                                                    runSpacing: 8.w,
                                                    children: List.generate(
                                                        searchPageState
                                                                .recommendKeyword
                                                                ?.length ??
                                                            0, (index) {
                                                      return _buildSearchHistoryKeyword(
                                                        context,
                                                        index,
                                                        searchPageState
                                                                .recommendKeyword![
                                                            index],
                                                      );
                                                    }),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      : const SizedBox.shrink(),
                                ],
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                    !searchPageState.isShowSearchHistory
                        ? Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 0.w),
                              child: SizedBox(
                                width: double.infinity,
                                child: (searchPageState.searchNovelList ?? [])
                                        .isNotEmpty
                                    ? ListView(
                                        children: List.generate(
                                            searchPageState
                                                    .searchNovelList?.length ??
                                                0, (index) {
                                          return _makeNovelWidget(
                                            context,
                                            searchPageState
                                                .searchNovelList![index],
                                          );
                                        }),
                                      )
                                    : Center(
                                        child: Text(
                                          'No Data'.g11n('Search_NoData'),
                                        ),
                                      ),
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

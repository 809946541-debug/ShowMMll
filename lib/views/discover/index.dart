import 'package:readindex/models/novel.dart';
import 'package:readindex/utils/intl.dart';
import 'package:readindex/views/discover/search.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

import '../../../api/book_api.dart';
import '../../../utils/color.dart';
import '../../../utils/global_shared_state.dart';
import '../../component/keepalive_wrapper.dart';
import '../../cubit/recomment_booklist_Cubit.dart';
import '../chapter/detail.dart';
import '../../component/search_bar.dart' as search_bar;

class BookshelfVideoPage extends StatefulWidget {
  final Map arguments;

  const BookshelfVideoPage({Key? key, required this.arguments})
      : super(key: key);

  @override
  State<BookshelfVideoPage> createState() => _LibraryCollectionPageState();
}

class _LibraryCollectionPageState extends State<BookshelfVideoPage>
    with SingleTickerProviderStateMixin {
  // Future<StandardResponseBody>? _collectionAdFuture;

  final double _bookViewWidth = 121.w;
  final double _bookCoverHeight = 165.5.w;

  final double _viewWidth = 141.w;
  bool get canPop {
    return Navigator.canPop(context);
  }

  TabController? tabController;
  final ValueNotifier<int> currentIndexNotifier = ValueNotifier<int>(1);

  Widget _makeCollectionAreaBookWidget(
      BuildContext context, Novel book, bool showSub) {
    return GestureDetector(
      onTap: () async {
        EasyLoading.show(status: 'Loading...'.g11n("App_Loading"));
        var bookResponse = await BookApi.getBookInfo(book.id!);
        Novel bookInfo = bookResponse.data!;
        debugPrint('响应体: ${bookInfo}');
        EasyLoading.dismiss();
        int latestChapterNo = bookInfo.lastReadChapterNo!;
        if (latestChapterNo == 0) {
          latestChapterNo = 1;
        }

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) =>
                ChapterDetailPage(bookId: book.id!, no: latestChapterNo),
          ),
        );
      },
      child: Container(
        width: _viewWidth,
        padding: EdgeInsets.all(18.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  children: [
                    CachedNetworkImage(
                      imageUrl: book.coverThumb ?? '',
                      errorWidget: (context, url, error) => Image.asset(
                        'assets/image/image_placeholder.jpg',
                        fit: BoxFit.cover,
                      ),
                      fit: BoxFit.cover,
                      width: _bookViewWidth,
                      height: _bookCoverHeight,
                    ),
                    showSub
                        ? IntrinsicWidth(
                            child: Container(
                            // width: 100,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  HexColor('#ff5736'),
                                  HexColor('#ff2121'),
                                ],
                              ),
                              border: Border.all(
                                color: HexColor('#B2B2B2').withOpacity(0.2),
                                width: 0,
                              ),
                              borderRadius: GlobalSharedState.textDirection ==
                                      TextDirection.ltr
                                  ? BorderRadius.only(
                                      topLeft: Radius.circular(6),
                                      bottomRight: Radius.circular(
                                        6,
                                      ))
                                  : BorderRadius.only(
                                      topRight: Radius.circular(6),
                                      bottomLeft: Radius.circular(
                                        6,
                                      )),
                              boxShadow: [
                                BoxShadow(
                                  color: HexColor('#B2B2B2').withOpacity(0.2),
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 7.w,
                                vertical: 3.w,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Subscription'
                                        .g11n("Library_SubscriptionTitle"),
                                    style: TextStyle(
                                      fontSize: 10.w,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ))
                        : const SizedBox.shrink()
                  ],
                )),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 6.w),
                child: Text(
                  book.title ?? '',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.sp,
                    height: 1.2,
                    color: HexColor('#1B1B1B'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMainView(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: buildDiscoveryView(context),
      ),
    );
  }

  Widget _makeBookWidget(BuildContext context, Novel book) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ChapterDetailPage(bookId: book.id!, no: 1),
          ),
        );
      },
      child: Container(
        clipBehavior: Clip.antiAlias,
        padding: EdgeInsets.only(
          right: 12.w,
          left: 12.w,
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
                height: 96.w,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
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
          ],
        ),
      ),
    );
  }

  Widget buildDiscoveryView(BuildContext context) {
    return KeepAliveWrapper(
      child: Column(
        children: [
          // 内容区域
          BlocBuilder<ReadRecommendBookListCubit, ReadRecommendBookListStatus>(
            builder: (context, state) {
              // 添加调试信息
              print(
                  'ReadRecommendBookList status: loading=${state.loading}, data length=${state.data?.length ?? 0}');

              // 确保数据不为空
              final books = state.data ?? [];

              if (state.loading) {
                return Container(
                  height: 500.w,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: HexColor('#FF2121'),
                    ),
                  ),
                );
              }

              if (books.isEmpty) {
                return Container(
                  height: 200.w,
                  child: Center(
                    child: Text(
                      '暂无推荐内容',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: HexColor('#636363'),
                      ),
                    ),
                  ),
                );
              }

              return Container(
                height: 550.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28.r),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withValues(alpha: 0.9),
                      Colors.black.withValues(alpha: 0.8),
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30.w),
                    Expanded(
                      child: Swiper(
                        viewportFraction: 0.3,
                        scale: 0.5,
                        index: currentIndexNotifier.value,
                        loop: false,
                        onIndexChanged: (index) {
                          // 当滑动时更新当前索引
                          print("index$index");
                          currentIndexNotifier.value = index;
                        },
                        itemCount: books.length,
                        itemBuilder: (context, index) {
                          final book = books[index];
                          final bool isActive = index == currentIndexNotifier.value;

                          return Column(
                            children: [
                              SizedBox(height: isActive ? 30.w : 30.w),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.r),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    // 封面图片
                                    CachedNetworkImage(
                                      imageUrl: book.coverThumb ?? '',
                                      errorWidget: (context, url, error) => Image.asset(
                                        'assets/image/image_placeholder.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                      fit: BoxFit.cover,
                                      width: isActive ? 120.w : 100.w,
                                      height: isActive ? 200.w : 180.w,
                                    ),
                                    // 视频播放图标
                                    GestureDetector(
                                      onTap: () {
                                        // 视频图标点击事件
                                        print('Video icon clicked for book: ${book.title}');
                                      },
                                      child: Container(
                                        width: 60.w,
                                        height: 60.w,
                                        decoration: BoxDecoration(
                                          color: Colors.black.withValues(alpha: 0.5),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.play_arrow,
                                          color: Colors.white,
                                          size: 32.w,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    ValueListenableBuilder<int>(
                      valueListenable: currentIndexNotifier,
                      builder: (context, currentIndex, child) {
                        final book = books[currentIndex];
                        return Container(
                          width: 430.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 60),
                                child: Text(
                                  book.title ?? '',
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.w),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20),
                                child: Text(
                                  book.summaryShort ?? '',
                                  textAlign: TextAlign.center,
                                  maxLines: 3,
                                  style: TextStyle(
                                      height: 1.4,
                                      fontSize: 12.sp,
                                      color: Colors.grey),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(height: 24.w),
                              SizedBox(
                                width: 246.w,
                                height: 34.w,
                                child: ElevatedButton(
                                  onPressed: () async {
                                    EasyLoading.show(
                                        status: 'Loading...'.g11n("App_Loading"));
                                    var bookResponse = await BookApi.getBookInfo(book.id!);
                                    Novel bookInfo = bookResponse.data!;
                                    EasyLoading.dismiss();
                                    int latestChapterNo = bookInfo.lastReadChapterNo!;
                                    if (latestChapterNo == 0) {
                                      latestChapterNo = 1;
                                    }

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) =>
                                            ChapterDetailPage(bookId: book.id!, no: latestChapterNo),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: HexColor('#1887FF'),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.r),
                                    ),
                                  ),
                                  child: Text(
                                    'START READING'.g11n('BookInfo_StartReading'),
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 40.w),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // getOrders();

    return BlocProvider<ReadRecommendBookListCubit>(
      create: (context) => ReadRecommendBookListCubit(),
      child: Scaffold(
        backgroundColor: HexColor('#F6F6F6'),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(46.w),
          child: AppBar(
              backgroundColor: HexColor('#F6F6F6'),
              // backgroundColor: HexColor('#F6F6F6'),
              title: Padding(
                padding: EdgeInsets.only(top: 8.w, bottom: 8.w),
                child: search_bar.SearchBar(
                  onFocus: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => LibrarySearchPage(
                          arguments: {},
                        ),
                      ),
                    );
                  },
                ),
              )),
        ),
        body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 2.w),
          child: _buildMainView(context),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: 0,
    );
    tabController?.addListener(() {
      setState(() {});
    });

    // 页面初始化时加载数据
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ReadRecommendBookListCubit>().refreshList();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }
}

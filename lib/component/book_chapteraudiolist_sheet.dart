import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../cubit/chapteraudios_cubit.dart';
import '../../models/chapteraudio.dart';
import '../../utils/intl.dart';

import '../../utils/color.dart';
import '../models/novel.dart';
import '../views/chapter/detail.dart';

class BookChapterAudioListSheet extends StatefulWidget {
  final Novel book;
  final int currentChapterIndex;
  final bool returnNo;

  const BookChapterAudioListSheet({
    Key? key,
    required this.book,
    required this.currentChapterIndex,
    required this.returnNo,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BookChapterListSheetState();
}

class _BookChapterListSheetState extends State<BookChapterAudioListSheet> {
  late ScrollController _scrollController;
  late int _currentChapterIndex;
  late ChapterListAudioCubit _ChapterListAudioCubit;

  @override
  void initState() {
    super.initState();
    _currentChapterIndex = widget.currentChapterIndex;
    _scrollController = ScrollController(
      initialScrollOffset: max((_currentChapterIndex - 1), 0) * 49.w,
    );
    _ChapterListAudioCubit = context.read<ChapterListAudioCubit>();
    // _scrollController.addListener(() async {
    //   if (_scrollController.offset >=
    //           _scrollController.position.maxScrollExtent &&
    //       !_scrollController.position.outOfRange) {
    //     _ChapterListAudioCubit.continueList();
    //   }
    //   if (_scrollController.offset <=
    //           _scrollController.position.minScrollExtent &&
    //       !_scrollController.position.outOfRange) {
    //     int newDataCount = await _ChapterListAudioCubit.previousList();
    //     debugPrint('newDataCount: $newDataCount');
    //     _scrollController
    //         .jumpTo(newDataCount * 16.w + _scrollController.offset);
    //   }
    // });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      // if (_ChapterListAudioCubit.state.isEmpty) {
      _ChapterListAudioCubit.tryLoadPageData(_currentChapterIndex ~/ 200 + 1);
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.7.sh,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 48.w,
            child: Row(
              children: [
                SizedBox(width: 24.w),
                Text(
                  '目录'.g11n('BookInfo_ChapterList'),
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.close,
                    size: 22.w,
                  ),
                ),
                SizedBox(width: 8.w),
              ],
            ),
          ),
          BlocBuilder<ChapterListAudioCubit, List<ChapterAudioDetailDto?>>(
            builder: (context, chapterList) {
              return Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 1.w,
                      indent: 16.w,
                      endIndent: 16.w,
                      color: HexColor('#E0E0E0'),
                    );
                  },
                  controller: _scrollController,
                  itemCount: widget.book.chapterCount!,
                  // scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    ChapterAudioDetailDto? chapter = chapterList[index];
                    if (chapter == null) {
                      _ChapterListAudioCubit.tryLoadPageData(index ~/ 200 + 1);
                      return SizedBox(
                        height: 48.w,
                        child: const SizedBox.shrink(),
                      );
                    }

                    return GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        // Navigator.of(context).pop(chapter.no);
                        if (widget.returnNo) {
                          Navigator.of(context).pop(chapter.no);
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ChapterDetailPage(
                                  bookId: chapter.bookId!, no: chapter.no!),
                            ),
                          );
                        }
                      },
                      child: SizedBox(
                        height: 48.w,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 22.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: FractionallySizedBox(
                                  widthFactor: 0.99,
                                  child: Text(
                                    chapter.title ?? '',
                                    // index.toString(),
                                    // maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: chapter.no == _currentChapterIndex
                                          ? Theme.of(context).primaryColor
                                          : null,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox.shrink()
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

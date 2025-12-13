
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readindex/api/chapter_api.dart';
import 'package:readindex/models/chapter.dart';
import 'package:readindex/utils/color.dart';
import 'package:readindex/utils/intl.dart';
import 'package:video_player/video_player.dart';

import '../../../cubit/user_cubit.dart';
import '../../../models/user.dart';

class ChapterDetailPage extends StatefulWidget {
  final String bookId;
  final int no;

  const ChapterDetailPage({
    Key? key,
    required this.bookId,
    required this.no,
  }) : super(key: key);

  // 支持通过路由参数传递
  static Route route({required String bookId, required int no}) {
    return MaterialPageRoute(
      builder: (_) => ChapterDetailPage(bookId: bookId, no: no),
    );
  }

  @override
  State<ChapterDetailPage> createState() => _ChapterDetailPageState();
}

class _ChapterDetailPageState extends State<ChapterDetailPage> {
  late int _currentNo;
  Chapter? _chapter;
  bool _loading = true;
  String? _error;
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    debugPrint('widget.no: ${widget.no}');
    _currentNo = widget.no;
    
    // 初始化视频播放器（使用默认地址）
    _controller = VideoPlayerController.networkUrl(
      Uri.parse('https://jsreadbucket.oss-eu-central-1.aliyuncs.com/com/temp/7449_1765274010.mp4'),
    );
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    
    _fetchChapter();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _fetchChapter() async {
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final resp = await ChapterApi.getChapter(bookId: widget.bookId, no: _currentNo);
      if (resp.data == null) {
        setState(() {
          _error = 'Chapter Not Found';
          _chapter = null;
          _loading = false;
        });
      } else if (!(resp.data?.canView ?? false)) {
        setState(() {
          _error = 'Chapter Can Not Read';
          _chapter = resp.data;
          _loading = false;
        });
      } else {
        setState(() {
          _chapter = resp.data;
          _loading = false;
        });
        
        // 更新视频播放器地址
        final String videoUrl = _chapter?.videoUrl ?? 'https://jsreadbucket.oss-eu-central-1.aliyuncs.com/com/temp/7449_1765274010.mp4';
        _controller.dispose();
        _controller = VideoPlayerController.networkUrl(Uri.parse(videoUrl));
        _initializeVideoPlayerFuture = _controller.initialize();
        _controller.setLooping(true);
      }
    } catch (e) {
      setState(() {
        _error = 'Loading Fail: $e';
        _loading = false;
      });
    }
  }

  void _prevChapter() {
    if (_currentNo > 1) {
      setState(() {
        _currentNo -= 1;
      });
      _fetchChapter();
    }
  }

  void _nextChapter() {
    setState(() {
      _currentNo += 1;
    });
    _fetchChapter();
  }


  @override
  Widget build(BuildContext context) {
    // 支持通过 ModalRoute 传参
    final args = ModalRoute.of(context)?.settings.arguments;
    String bookId = widget.bookId;
    int no = _currentNo;
    if (args is Map) {
      bookId = args['bookId'] ?? bookId;
      no = args['no'] ?? no;
    }

    return  Scaffold(
          appBar: AppBar(
            title: Text(_chapter?.title ?? 'chapter'),
          ),
          body: GestureDetector(
            onVerticalDragUpdate: (details) {
              // 向下滑动检测，灵敏度设置为50像素
              if (details.primaryDelta! > 50 && !_loading) {
                _nextChapter();
              }
            },
            child: _loading
                ? const Center(child: CircularProgressIndicator())
                : _error != null
                    ? Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(_error!,
                                  style: TextStyle(color: HexColor('#c62828'))),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 30.w,
                                  child: Divider(
                                    color: Colors.grey.withValues(alpha: 0.4),
                                    height: 1.w,
                                    thickness: 1.w,
                                  ),
                                ),
                                SizedBox(
                                  width: 0.7.sw,
                                  child: Center(
                                    child: Text(
                                      'Show your support to inspire the writer to unlock more chapters.'
                                          .g11n('ReadPage_ReadPowerTip1'),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 30.w,
                                  child: Divider(
                                    color: Colors.grey.withValues(alpha: 0.4),
                                    height: 1.w,
                                    thickness: 1.w,
                                  ),
                                ),
                              ],
                            ), Padding(
                              padding: EdgeInsets.only(top: 8.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BlocBuilder<UserInfoCubit, UserInfo>(
                                    builder: (context, userInfo) {
                                      bool isAutoUnLock =
                                          userInfo.isAutoUnlock ?? false;
                                      return GestureDetector(
                                        onTap: () async {
                                          EasyLoading.show(
                                            status: '改变自动解锁设置中'.g11n(
                                              'ReadPage_ChangeAutoUnlockTip',
                                            ),
                                          );
                                          await context
                                              .read<UserInfoCubit>()
                                              .changeAutoUnlockSetting(
                                                !isAutoUnLock,
                                              );
                                          EasyLoading.dismiss();
                                        },
                                        child: Icon(
                                          Icons.check_circle,
                                          color: isAutoUnLock
                                              ? HexColor('#fc73af')
                                              : HexColor('#9E9E9E')
                                                  .withValues(alpha: 0.6),
                                          size: 18.w,
                                        ),
                                      );
                                    },
                                  ),
                                  SizedBox(width: 12.w),
                                  SizedBox(
                                    child: Text(
                                      'Unlock Next Chapter Automatically'.g11n(
                                        'ReadPage_AutoUnlockChapter',
                                      ),
                                      maxLines: 1,
                                      style: TextStyle(
                                            fontSize: 12.sp,
                                            color: HexColor('#9E9E9E'),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    : _chapter == null
                        ? const Center(child: Text('No Data'))
                        : Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: ListView(
                              children: [
                                const SizedBox(height: 16),
                                FutureBuilder(
                                  future: _initializeVideoPlayerFuture,
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState == ConnectionState.done) {
                                      return AspectRatio(
                                        aspectRatio: _controller.value.aspectRatio,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            VideoPlayer(_controller),
                                            FloatingActionButton(
                                              onPressed: () {
                                                setState(() {
                                                  if (_controller.value.isPlaying) {
                                                    _controller.pause();
                                                  } else {
                                                    _controller.play();
                                                  }
                                                });
                                              },
                                              backgroundColor: Colors.black.withValues(alpha: 0.5),
                                              child: Icon(
                                                _controller.value.isPlaying
                                                    ? Icons.pause
                                                    : Icons.play_arrow,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    } else {
                                      return const Center(child: CircularProgressIndicator());
                                    }
                                  },
                                ),
                                VideoProgressIndicator(
                                  _controller,
                                  allowScrubbing: true,
                                  colors: const VideoProgressColors(
                                    playedColor: Colors.pink,
                                    bufferedColor: Colors.grey,
                                    backgroundColor: Colors.black26,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Center(
                                  child: Text(
                                    _chapter!.title ?? 'Chapter',
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor('#fc73af'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: _currentNo > 1 && !_loading ? _prevChapter : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: HexColor('#fc73af'),
                  ),
                  child: const Text('PreviousPage'),
                ),
                ElevatedButton(
                  onPressed: !_loading ? _nextChapter : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: HexColor('#fc73af'),
                  ),
                  child: const Text('NextPage'),
                ),
              ],
            ),
          ))
    ;
  }
}

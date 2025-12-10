import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:quiver/strings.dart';
import 'package:collection/collection.dart';

import '../../../api/book_api.dart';
import '../../../api/chapteraudio_api.dart';
import '../../../cubit/chapteraudios_cubit.dart';
import '../../../models/chapteraudio.dart';
import '../../component/book_chapteraudiolist_sheet.dart';
import '../../models/chapteraudio.dart';
import '../../utils/color.dart';

class ChapterDetailAudioPage extends StatefulWidget {
  final String bookId;
  final int no;

  const ChapterDetailAudioPage({
    Key? key,
    required this.bookId,
    required this.no,
  }) : super(key: key);

  // 支持通过路由参数传递
  static Route route({required String bookId, required int no}) {
    return MaterialPageRoute(
      builder: (_) => ChapterDetailAudioPage(bookId: bookId, no: no),
    );
  }

  @override
  State<ChapterDetailAudioPage> createState() => _ChapterDetailPageState();
}

class _ChapterDetailPageState extends State<ChapterDetailAudioPage> {
  late int _currentNo;
  ChapterAudioDetailDto? _chapter;
  bool _loading = true;
  String? _error;

  // 音频播放器相关状态 - 优化预加载和缓存策略
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;
  Duration _currentPosition = Duration.zero;
  Duration _totalDuration = Duration.zero;
  int _currentAudioIndex = 0;

  // 改进的缓存管理系统
  Map<String, AudioPlayer> _audioCache = {}; // 缓存已加载的音频播放器实例
  final int _maxCacheSize = 3; // 最大缓存3个音频

  // 音量控制相关状态
  double _volume = 1.0; // 默认音量为最大
  OverlayEntry? _volumeOverlayEntry;
  final GlobalKey _volumeButtonKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    debugPrint('widget.no: ${widget.no}');
    _currentNo = widget.no;
    _setupAudioPlayer();
    _fetchChapter();
  }

  void _setupAudioPlayer() {
    _audioPlayer.onPlayerStateChanged.listen((state) {
      debugPrint('Player state changed: $state');
      setState(() {
        _isPlaying = state == PlayerState.playing;
      });
    });

    _audioPlayer.onDurationChanged.listen((duration) {
      debugPrint('Duration changed: $duration');
      setState(() {
        _totalDuration = duration;
      });
    });

    _audioPlayer.onPositionChanged.listen((position) {
      setState(() {
        _currentPosition = position;
      });
    });

    // 监听播放完成事件，实现连续播放
    _audioPlayer.onPlayerComplete.listen((event) {
      debugPrint('Audio completed, playing next');
      _playNextAudio();
    });
  }

  Future<void> _playNextAudio() async {
    if (_chapter?.audio?.isNotEmpty == true) {
      if (_currentAudioIndex < _chapter!.audio!.length - 1) {
        // 播放下一个音频
        setState(() {
          _currentAudioIndex++;
        });

        debugPrint('=== START PLAYING NEXT AUDIO ===');
        debugPrint('Current audio index: $_currentAudioIndex');

        final nextAudioUrl = _chapter!.audio![_currentAudioIndex].audio;
        debugPrint('Target audio URL: $nextAudioUrl');

        // 重置进度状态
        setState(() {
          _currentPosition = Duration.zero;
          _totalDuration = Duration.zero;
        });

        final startTime = DateTime.now();

        try {
          if (nextAudioUrl != null && nextAudioUrl.isNotEmpty) {
            // 检查是否在缓存中
            if (_audioCache.containsKey(nextAudioUrl)) {
              debugPrint('🎵 Playing from cache');
              // 直接播放缓存的音频
              await _audioPlayer.play(UrlSource(nextAudioUrl));
            } else {
              debugPrint('⚠️ Cache miss, loading audio');
              // 缓存中没有，正常加载
              await _audioPlayer.play(UrlSource(nextAudioUrl));
            }

            final endTime = DateTime.now();
            final duration = endTime.difference(startTime);
            debugPrint(
                '⏱️ Audio playback started in ${duration.inMilliseconds}ms');
            debugPrint('=== END PLAYING NEXT AUDIO ===');
          }
        } catch (e) {
          debugPrint('❌ Error playing next audio: $e');
          // 如果播放失败，回退到正常播放
          await _playAudio();
        }
      } else {
        // 所有音频播放完成，自动切换到下一章
        _nextChapter();
      }
    }
  }

  Future<void> _playAudio() async {
    if (_chapter?.audio?.isNotEmpty == true &&
        _currentAudioIndex < _chapter!.audio!.length) {
      final audioUrl = _chapter!.audio![_currentAudioIndex].audio;
      if (audioUrl != null && audioUrl.isNotEmpty) {
        debugPrint('Playing audio: $audioUrl, index: $_currentAudioIndex');
        // 重置进度状态
        setState(() {
          _currentPosition = Duration.zero;
          _totalDuration = Duration.zero;
        });
        try {
          // 检查是否在缓存中
          if (_audioCache.containsKey(audioUrl)) {
            debugPrint('🎵 Playing from cache');
            // 直接播放缓存的音频
            await _audioPlayer.play(UrlSource(audioUrl));
          } else {
            debugPrint('⚠️ Cache miss, loading audio');
            // 缓存中没有，正常加载
            await _audioPlayer.play(UrlSource(audioUrl));
          }
          debugPrint('Audio playback started');
        } catch (e) {
          debugPrint('Error playing audio: $e');
        }
      } else {
        debugPrint('Audio URL is empty or null');
      }
    } else {
      debugPrint('No audio available to play');
    }
  }

  Future<void> _preloadAllNextAudios() async {
    if (_chapter?.audio?.isNotEmpty == true) {
      debugPrint('=== START PRELOADING ALL AUDIOS ===');
      debugPrint('Total audio count: ${_chapter!.audio!.length}');

      // 立即预加载所有音频到缓存，使用并行方式
      List<Future<void>> preloadTasks = [];
      for (int i = 0; i < _chapter!.audio!.length; i++) {
        final audioUrl = _chapter!.audio![i].audio;
        if (audioUrl != null && audioUrl.isNotEmpty) {
          preloadTasks.add(_preloadAudioToCache(audioUrl, i));
        }
      }

      // 等待所有预加载任务完成
      await Future.wait(preloadTasks);

      debugPrint('=== END PRELOADING ALL AUDIOS ===');
    }
  }

  Future<void> _preloadAudioToCache(String audioUrl, int index) async {
    // 检查是否已经缓存
    if (_audioCache.containsKey(audioUrl)) {
      debugPrint('✅ Audio $index already in cache: $audioUrl');
      return;
    }

    debugPrint('📥 Preloading audio $index: $audioUrl');
    try {
      // 创建新的AudioPlayer实例进行预加载
      AudioPlayer cachePlayer = AudioPlayer();

      // 加载音频到缓存
      await cachePlayer.setSourceUrl(audioUrl);

      // 添加到缓存管理
      _manageAudioCache(audioUrl, cachePlayer);

      debugPrint('✅ Audio $index preloaded to cache: $audioUrl');
    } catch (e) {
      debugPrint('❌ Error preloading audio $index: $e');
    }
  }

  void _manageAudioCache(String audioUrl, AudioPlayer player) {
    // 添加到缓存
    _audioCache[audioUrl] = player;

    // 如果缓存超过最大限制，清理最旧的缓存
    if (_audioCache.length > _maxCacheSize) {
      // 获取第一个添加的音频URL（最旧的）
      String oldestUrl = _audioCache.keys.first;
      AudioPlayer oldestPlayer = _audioCache[oldestUrl]!;

      // 释放播放器资源
      oldestPlayer.dispose();

      // 从缓存中移除
      _audioCache.remove(oldestUrl);

      debugPrint('🗑️ Cache cleaned: $oldestUrl');
    }
  }

  // 不再需要基于进度的预加载，所有音频在初始化时就进行预加载

  Future<void> _pauseAudio() async {
    await _audioPlayer.pause();
  }

  Future<void> _resumeAudio() async {
    await _audioPlayer.resume();
  }

  Future<void> _stopAudio() async {
    await _audioPlayer.stop();
  }

  void _seekAudio(Duration position) {
    _audioPlayer.seek(position);
  }

  // 播放下一个音频
  Future<void> _nextVideo() async {
    if (_chapter?.audio?.isNotEmpty == true) {
      if (_currentAudioIndex < _chapter!.audio!.length - 1) {
        // 还有更多音频，播放下一个
        setState(() {
          _currentAudioIndex++;
        });
        await _playAudio();
      } else {
        // 已经是最后一个音频，切换到下一章
        _nextChapter();
      }
    }
  }

  // 播放上一个音频
  Future<void> _prevVideo() async {
    if (_chapter?.audio?.isNotEmpty == true) {
      if (_currentAudioIndex > 0) {
        // 不是第一个音频，播放上一个
        setState(() {
          _currentAudioIndex--;
        });
        await _playAudio();
      } else {
        // 是第一个音频，切换到上一章
        _prevChapter();
      }
    }
  }

  // 音量控制方法
  void _setVolume(double volume) {
    setState(() {
      _volume = volume.clamp(0.0, 1.0); // 确保音量在0-1之间
    });
    _audioPlayer.setVolume(_volume);
  }

  void _toggleVolumeSlider() {
    _toggleVolumeOverlay();
  }

  void _hideVolumeSlider() {
    _hideVolumeOverlay();
  }

  // 获取音量图标
  IconData _getVolumeIcon() {
    if (_volume == 0.0) {
      return Icons.volume_off;
    } else if (_volume < 0.5) {
      return Icons.volume_down;
    } else {
      return Icons.volume_up;
    }
  }

  String _formatDuration(Duration duration) {
    // 如果时长为0，显示"--:--"表示未知时长
    if (duration == Duration.zero) {
      return '--:--';
    }

    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    if (duration.inHours > 0) {
      return '$hours:$minutes:$seconds';
    } else {
      return '$minutes:$seconds';
    }
  }

  void _showVolumeOverlay() {
    if (_volumeOverlayEntry != null) {
      return;
    }

    final overlay = Overlay.of(context);

    // 在下一帧中获取音量按钮的位置
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final renderBox =
          _volumeButtonKey.currentContext?.findRenderObject() as RenderBox?;
      if (renderBox != null) {
        final offset = renderBox.localToGlobal(Offset.zero);
        final size = renderBox.size;

        _volumeOverlayEntry = OverlayEntry(
          builder: (context) => Positioned(
            left: offset.dx - 0.w, // 居中显示在按钮上方
            top: offset.dy - 60.w, // 显示在按钮上方
            child: Material(
              color: Colors.transparent,
              child: Container(
                width: 200.w,
                height: 50.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 15.r,
                      offset: Offset(0, 8.w),
                    ),
                  ],
                  border: Border.all(
                    color: HexColor('#E0E0E0'),
                    width: 1.w,
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Slider(
                  value: _volume,
                  min: 0.0,
                  max: 1.0,
                  divisions: 10,
                  onChanged: (value) {
                    _audioPlayer.setVolume(value);
                    setState(() {
                      _volume = value;
                    });
                  },
                  activeColor: HexColor('#f5c993'),
                  inactiveColor: HexColor('#E0E0E0'),
                  thumbColor: HexColor('#f5c993'),
                ),
              ),
            ),
          ),
        );

        overlay.insert(_volumeOverlayEntry!);
      }
    });
  }

  void _hideVolumeOverlay() {
    _volumeOverlayEntry?.remove();
    _volumeOverlayEntry = null;
  }

  void _toggleVolumeOverlay() {
    if (_volumeOverlayEntry == null) {
      _showVolumeOverlay();
    } else {
      _hideVolumeOverlay();
    }
  }

  @override
  void dispose() {
    _hideVolumeOverlay();
    _audioPlayer.dispose();

    // 清理所有缓存的音频播放器
    for (var player in _audioCache.values) {
      player.dispose();
    }
    _audioCache.clear();

    super.dispose();
  }

  Future<void> _fetchChapter() async {
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final resp = await ChapterAudioApi.getChapter(
          bookId: widget.bookId, no: _currentNo);
      if (resp.data == null) {
        setState(() {
          _error = 'Chapter Not Found';
          _chapter = null;
          _loading = false;
        });
      } else {
        setState(() {
          _chapter = resp.data;
          _loading = false;
        });
        debugPrint('Chapter data received: ${_chapter?.toJson()}');
        debugPrint('Audio list length: ${_chapter?.audio?.length}');
        // 获取到章节数据后自动播放音频
        if (_chapter?.audio?.isNotEmpty == true) {
          for (var i = 0; i < _chapter!.audio!.length; i++) {
            debugPrint('Audio $i: ${_chapter!.audio![i].toJson()}');
          }

          // 立即预加载所有音频，不等待播放开始
          // 先播放第一个音频，同时在后台预加载其他音频
          _playAudio();
          _preloadAllNextAudios();
        } else {
          debugPrint('No audio data available');
        }
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
      _stopAudio(); // 停止当前音频
      setState(() {
        _currentNo -= 1;
        _currentAudioIndex = 0; // 重置音频索引
        _currentPosition = Duration.zero;
        _totalDuration = Duration.zero;
        _isPlaying = true;
      });
      _fetchChapter();
    }
  }

  void _nextChapter() {
    _stopAudio(); // 停止当前音频
    setState(() {
      _currentNo += 1;
      _currentAudioIndex = 0; // 重置音频索引
      _currentPosition = Duration.zero;
      _totalDuration = Duration.zero;
      _isPlaying = true;
    });
    _fetchChapter();
  }

  void _showChapterList(String bookId, int chapterCount) async {
    // 先获取书籍信息，避免在异步操作中使用BuildContext
    final bookResponse = await BookApi.getBookInfo(widget.bookId);
    print('bookId:$bookId,chapterCount: $chapterCount');
    print('bookResponse:${bookResponse.data}');
    // 然后使用showDialog的替代方式，确保上下文正确
    if (mounted && bookResponse.data != null) {
      int? targetChapterNo = await showModalBottomSheet(
        context: context,
        useRootNavigator: true,
        builder: (context) {
          return BlocProvider<ChapterListAudioCubit>(
              create: (context) => ChapterListAudioCubit(
                    bookId: bookId,
                    chapterCount: bookResponse.data!.chapterCount!,
                  ),
              child: BlocBuilder<ChapterListAudioCubit,
                  List<ChapterAudioDetailDto?>>(builder: (context, chapters) {
                return BookChapterAudioListSheet(
                  book: bookResponse.data!,
                  currentChapterIndex: chapterCount,
                  returnNo: true,
                );
              }));
        },
      );
      if (targetChapterNo != null) {
        setState(() {
          _currentNo = targetChapterNo;
        });
        _fetchChapter();
      }
    }
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

    return Scaffold(
      appBar: AppBar(
        title: Text(_chapter?.title ?? 'chapter'),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _error != null || _chapter == null
              ? const Center(child: Text('No Data'))
              : _buildAudioPlayer(context),
    );
  }

  Widget _buildAudioPlayer(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 封面图片
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.w),
          child: SizedBox(
            width: 160.w,
            height: 215.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: isNotEmpty(_chapter?.cover)
                    ? _chapter!.cover!
                    : 'assets/image/image_placeholder.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        // 章节标题
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
          child: Column(
            children: [
              Text(
                '${_chapter?.no!}. ${_chapter?.title ?? ''}',
                style: TextStyle(
                  color: HexColor('#9E9E9E'),
                  fontSize: 21.sp,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                _chapter?.bookTitle ?? '',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),

        // 当前播放进度显示
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.w),
          child: Text(
            '${_currentAudioIndex + 1}/${_chapter?.audio?.length ?? 0}',
            style: TextStyle(
              color: HexColor('#f5c993'),
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // 进度条
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _formatDuration(_currentPosition),
                    style: TextStyle(
                      color: HexColor('#9E9E9E'),
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    _formatDuration(_totalDuration),
                    style: TextStyle(
                      color: HexColor('#9E9E9E'),
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
              AbsorbPointer(
                absorbing: _volumeOverlayEntry != null,
                child: Slider(
                  value: _currentPosition.inSeconds.toDouble(),
                  min: 0,
                  max: _totalDuration.inSeconds > 0
                      ? _totalDuration.inSeconds.toDouble()
                      : 100.0, // 默认最大值，避免除零错误
                  activeColor: HexColor('#f5c993'),
                  inactiveColor: Colors.grey.withOpacity(0.3),
                  onChanged: (value) {
                    _seekAudio(Duration(seconds: value.toInt()));
                  },
                  onChangeEnd: (value) {
                    // 拖动结束后更新位置
                    _seekAudio(Duration(seconds: value.toInt()));
                  },
                ),
              ),
            ],
          ),
        ),

        // 播放控制按钮
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 30.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 音量控制 - 使用Overlay实现真正的浮动效果
              IconButton(
                key: _volumeButtonKey,
                icon: Icon(_getVolumeIcon()),
                iconSize: 30.w,
                color: HexColor('#9E9E9E'),
                onPressed: _toggleVolumeOverlay,
              ),
              SizedBox(width: 20.w),

              // 上一个音频
              IconButton(
                icon: Icon(Icons.skip_previous),
                iconSize: 40.w,
                color: HexColor('#f5c993'),
                onPressed: _prevVideo,
              ),
              SizedBox(width: 20.w),

              // 播放/暂停
              Container(
                width: 80.w,
                height: 80.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: HexColor('#f5c993'),
                ),
                child: IconButton(
                  icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
                  iconSize: 40.w,
                  color: Colors.white,
                  onPressed: () {
                    if (_isPlaying) {
                      _pauseAudio();
                    } else {
                      _resumeAudio();
                    }
                  },
                ),
              ),
              SizedBox(width: 20.w),

              // 下一个音频
              IconButton(
                icon: Icon(Icons.skip_next),
                iconSize: 40.w,
                color: HexColor('#f5c993'),
                onPressed: _nextVideo,
              ),
              SizedBox(width: 20.w),

              // 菜单
              IconButton(
                icon: Icon(Icons.menu),
                iconSize: 30.w,
                color: HexColor('#9E9E9E'),
                onPressed: () {
                  _showChapterList(widget.bookId, _currentNo);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

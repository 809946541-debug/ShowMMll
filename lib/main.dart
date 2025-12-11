import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'component/htmlview_page.dart';
import 'cubit/user_cubit.dart';
import 'utils/global_shared_state.dart';
import 'utils/color.dart';
import 'views/discover/index.dart';
import 'views/user/index.dart';

// 重定向事件类
class RedirectEvent {
  final String? bookId;

  RedirectEvent({this.bookId});
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 初始化 EasyLoading 配置
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.white
    ..backgroundColor = Colors.black.withValues(alpha: 0.7)
    ..indicatorColor = Colors.white
    ..textColor = Colors.white
    ..maskColor = Colors.black.withValues(alpha: 0.6)
    ..userInteractions = false
    ..dismissOnTap = false;

  await GlobalSharedState.initialize();
  runApp(
    MultiBlocProvider(
      providers: globalBlocProvider(),
      child: MyApp(),
    ),
  );
}

List<BlocProvider> globalBlocProvider() {
  return [
    BlocProvider<UserInfoCubit>(
      create: (context) => UserInfoCubit(),
      // lazy: false,
    ),
    // BlocProvider<PurchaseBloc>(
    //   create: (context) => PurchaseBloc(),
    //   lazy: false,
    // ),
    // BlocProvider<WalletOverviewCubit>(
    //   create: (context) => WalletOverviewCubit(),
    // ),
    // BlocProvider<PayableOptionListCubit>(
    //   create: (context) => PayableOptionListCubit(),
    //   lazy: false,
    // ),
    // BlocProvider<VipOptionListCubit>(
    //   create: (context) => VipOptionListCubit(),
    //   lazy: false,
    // ),
    // BlocProvider<FavoriteBookList>(
    //   create: (context) => FavoriteBookList(),
    // ),
  ];
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          title: 'ReadIndex',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Colors.grey[200],
          ),
          routes: {
            'html_view': (context) => const HtmlViewPage(arguments: {}),
          },
          home: const SplashPage(),
          builder: EasyLoading.init(),
        );
      },
    );
  }
}

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _checkInitialization();
  }

  Future<void> _checkInitialization() async {
    final startTime = DateTime.now().millisecondsSinceEpoch;

    try {
      // 在后台执行登录检查，不阻塞主线程
      _startBackgroundLoginCheck();

      // 最小化启动页显示时间，只等待1秒而不是2秒
      await Future.delayed(const Duration(seconds: 2));

      if (!mounted) return;

      final endTime = DateTime.now().millisecondsSinceEpoch;
      debugPrint('Splash screen displayed for ${endTime - startTime}ms');

      // 直接跳转到带有侧边栏的主页面
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => MainLayoutPage()),
      );
      // 正常跳转到主页面
    } catch (e) {
      debugPrint('Splash error: $e');
      if (!mounted) return;
      // 出错时也直接跳转到主页面
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => MainLayoutPage()),
      );
    }
  }

  // 在后台执行登录检查，避免阻塞主线程
  void _startBackgroundLoginCheck() {
    Future(() async {
      final startTime = DateTime.now().millisecondsSinceEpoch;

      try {
        final endTime = DateTime.now().millisecondsSinceEpoch;
        debugPrint(
            'Background login check completed in ${endTime - startTime}ms');
      } catch (e) {
        debugPrint('Background login check error: $e');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(),
    );
  }
}

// 主布局页面，带有侧边栏
class MainLayoutPage extends StatefulWidget {
  const MainLayoutPage({Key? key}) : super(key: key);

  @override
  State<MainLayoutPage> createState() => _MainLayoutPageState();
}

class _MainLayoutPageState extends State<MainLayoutPage> {
  // 侧边栏控制器
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // 侧边栏
      drawer: Drawer(
        width: 280.w,
        backgroundColor: Colors.white,
        child: UserCenterPage(),
      ),
      // 主内容区域
      body: Scaffold(
        backgroundColor: HexColor('#F6F6F6'),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(46.w),
          child: AppBar(
            backgroundColor: HexColor('#F6F6F6'),
            elevation: 0,
            leading: IconButton(
              // 左上角菜单按钮
              icon: Icon(Icons.menu, color: HexColor('#1B1B1B'), size: 24.w),
              onPressed: () {
                // 打开侧边栏
                _scaffoldKey.currentState?.openDrawer();
              },
            ),
            title: Text(
              'Discover',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: HexColor('#1B1B1B'),
              ),
            ),
            centerTitle: true,
            actions: [
              // 右上角聊天按钮
              IconButton(
                icon: Icon(Icons.chat_bubble_outline, color: HexColor('#1B1B1B'), size: 24.w),
                onPressed: () {
                  // 聊天按钮点击事件
                  print('Chat button clicked');
                  EasyLoading.showToast('Chat feature coming soon');
                },
              ),
              SizedBox(width: 12.w),
            ],
          ),
        ),
        // 主内容：发现页面
        body: BookshelfVideoPage(arguments: {}),
      ),
    );
  }
}

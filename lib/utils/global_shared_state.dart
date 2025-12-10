import 'dart:convert';

import 'package:readindex/utils/http_client.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiver/strings.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import 'package:event_bus/event_bus.dart';
import '../api/common_api.dart';
import '../api/user_api.dart';
import '../models/app_config.dart';
import '../models/order.dart';
import '../models/user.dart';
import 'storage.dart';
import 'dart:io';

const randomDeviceCodeKey = 'randomDeviceCodeKey';
const tokenKey = 'authToken';
const authTokenSaveTime = 'authToken_saved_at';
const userLanguageKey = 'userLanguageKey';

class PlatformType {
  static const int unknownPlatform = -1;
  static const int android = 1;
  static const int ios = 0;
  static const int web = 3;
}

class GlobalSharedState {
  // baseUrlIndex 用于 RequestUtil 的 baseUrl 切换
  static int _baseUrlIndex = 0;

  static int _platform = PlatformType.unknownPlatform;
  static int get baseUrlIndex => _baseUrlIndex;

  static Future<void> setbaseUrlIndex(int idx) async {
    _baseUrlIndex = idx;
    StorageUtil storageUtil = await StorageUtil.getInstance();
    await storageUtil.setString('baseUrlIndex', idx.toString());
  }

  static Future<void> loadBaseUrlIndex() async {
    StorageUtil storageUtil = await StorageUtil.getInstance();
    String? idxStr = await storageUtil.get('baseUrlIndex');
    int? idx = idxStr != null ? int.tryParse(idxStr) : null;
    if (idx != null) {
      _baseUrlIndex = idx;
    }
  }

  static String? _deviceId;
  static String? _authToken;
  static String? _encoding = "E1FA-D070-4857-B3E3";
  static String _systemLanguage = 'en';
  static String _userLanguage = '';
  static int _timezoneOffset = 8;
  static String? _randomDeviceCode;
  static UserInfo _userInfo = UserInfo();
  static AppConfig _appConfig = AppConfig();
  static final EventBus _eventBus = EventBus();
  static String? _redirectBookId;

  static String get systemLanguage => _systemLanguage;
  static int get timezoneOffset => _timezoneOffset;
  static String? get redirectBookId => _redirectBookId;

  static void setRedirectBookId(String? bookId) {
    _redirectBookId = bookId;
  }

  static setUserInfo(UserInfo userInfo) async {
    _userInfo = userInfo;
    StorageUtil storageUtil = await StorageUtil.getInstance();
    await storageUtil.setString('userInfo', json.encode(userInfo));
  }

  static initRandomDeviceCode() async {
    StorageUtil storageUtil = await StorageUtil.getInstance();
    String? randomDeviceCode = await storageUtil.get(randomDeviceCodeKey);
    if (randomDeviceCode?.isNotEmpty ?? false) {
      _randomDeviceCode = randomDeviceCode;
    }
  }

  static getRandomDeviceCode() {
    if (_randomDeviceCode != null) {
      return _randomDeviceCode;
    }
    Uuid uuid = const Uuid();
    _randomDeviceCode = uuid.v4();
    SharedPreferences.getInstance().then((storageUtil) {
      storageUtil.setString(randomDeviceCodeKey, _randomDeviceCode!);
    });
    return _randomDeviceCode;
  }

  static Future<void> initialize() async {
    await initRandomDeviceCode();
    await initUserLanguage();
    await initAppConfig();
    await initPlatform();
    await loadBaseUrlIndex();
    await initDeviceCode();
    await initToken();
  }

  static initAppConfig() async {
    StandardResponseBody<dynamic> responseBody = await CommonApi.getAppConfig();
    // debugPrint(responseBody.data.toString());
    await setAppConfig(AppConfig.fromJson(responseBody.data));
  }

  static initPlatform() async {
    if (kIsWeb) {
      _platform = PlatformType.web;
    } else {
      if (Platform.isAndroid) {
        _platform = PlatformType.android;
      }
      if (Platform.isIOS) {
        _platform = PlatformType.ios;
      }
    }
  }

  static setAppConfig(AppConfig appConfig) async {
    _appConfig = appConfig;
    StorageUtil storageUtil = await StorageUtil.getInstance();
    await storageUtil.setString('appConfig', json.encode(appConfig));
  }

  static initToken() async {
    // 优先从本地读取 authToken 及其保存时间
    StorageUtil storageUtil = await StorageUtil.getInstance();
    _authToken = await storageUtil.get(tokenKey);

    String? savedAtStr = await storageUtil.get(authTokenSaveTime);
    int? savedAt = savedAtStr != null ? int.tryParse(savedAtStr) : null;
    int now = DateTime.now().millisecondsSinceEpoch;

    print('_authToken: $_authToken');
    // 判断 token 是否过期（12小时=43200秒=43200000毫秒）
    bool tokenValid = false;
    if (_authToken != null && _authToken!.isNotEmpty && savedAt != null) {
      if (now - savedAt < 43200000) {
        tokenValid = true;
      }
    }

    print('tokenValid: $tokenValid');
    if (tokenValid) {
      return;
    }

    // 获取系统语言和时区
    _systemLanguage = WidgetsBinding.instance.window.locale.languageCode;
    _timezoneOffset = DateTime.now().timeZoneOffset.inHours;

    debugPrint('response: 1');
    // 使用设备ID登录
    final response = await UserApi.login(params: {
      'unionId': _deviceId,
    });

    print('login_deviceId: $_deviceId');
    debugPrint('response: ${response.data}');
    if (response.data != null && response.data!['token'] != null) {
      _authToken = response.data!['token'];
      await storageUtil.setString(tokenKey, _authToken!);
      await storageUtil.setString(authTokenSaveTime, now.toString());
    } else {
      debugPrint(
          'Warning: Invalid token in response - code: ${response.code}, data: ${response.data}');
    }
  }

  static initDeviceCode() async {
    // 获取设备ID
    final deviceInfo = DeviceInfoPlugin();
    const storageKey = 'device_id';
    final prefs = await SharedPreferences.getInstance();
    String? previousDeviceId = prefs.getString(storageKey);
    if (Platform.isAndroid) {
      print('previousDeviceId: $previousDeviceId');
      if (previousDeviceId != null && previousDeviceId.isNotEmpty) {
        _deviceId = previousDeviceId;
      } else {
        final androidInfo = await deviceInfo.androidInfo;
        _deviceId = androidInfo.serialNumber;
      }
      print('androidInfo.id: $_deviceId');
      if (_deviceId == '' ||
          _deviceId == '00000000-0000-0000-0000-000000000000' ||
          _deviceId!.toLowerCase().contains('unknown')) {
        _deviceId = getRandomDeviceCode();
      }

      print('androidInfo2.id: $_deviceId');
    } else if (Platform.isIOS) {
      if (previousDeviceId != null && previousDeviceId.isNotEmpty) {
        _deviceId = previousDeviceId;
      } else {
        final iosInfo = await deviceInfo.iosInfo;
        _deviceId = iosInfo.identifierForVendor ?? '';
        await prefs.setString(storageKey, _deviceId!);
      }
    }
  }

  static initUserLanguage() async {
    StorageUtil storageUtil = await StorageUtil.getInstance();
    String? userLanguage = await storageUtil.get(userLanguageKey);
    if (isNotEmpty(userLanguage)) {
      _userLanguage = userLanguage!;
    }
  }

  static setUserLanguage(String language) async {
    _userLanguage = language;
    StorageUtil storageUtil = await StorageUtil.getInstance();
    await storageUtil.setString(userLanguageKey, _userLanguage);
  }

  static setToken(token) async {
    _authToken = token;
    StorageUtil storageUtil = await StorageUtil.getInstance();
    await storageUtil.setString(tokenKey, _authToken!);
  }

  // 删除订单
  static Future<void> removeOrder(String tradeNo) async {
    List<Order> orders = await loadOrders();

    // 找到并删除订单
    orders.removeWhere((order) => order.tradeNo == tradeNo);

    // 重新保存更新后的订单列表
    await saveOrders(orders);
  }

  // 加载Order列表
  static Future<List<Order>> loadOrders() async {
    StorageUtil storageUtil = await StorageUtil.getInstance();
    List<String>? jsonOrders;
    dynamic result = await storageUtil.getStringList('orders');
    if (result is List<String>) {
      jsonOrders = result;
    }
    if (jsonOrders == null) {
      return [];
    } else {
      // 将JSON字符串转为Order对象列表
      try {
        return jsonOrders
            .map((jsonOrder) => Order.fromJson(jsonDecode(jsonOrder)))
            .toList();
      } catch (e, stackTrace) {
        print('Error fetching orders: $e');
        print('Stack trace: $stackTrace');
        return [];
      }
    }
  }

  // 保存Order列表
  static Future<void> saveOrders(List<Order> orders) async {
    StorageUtil storageUtil = await StorageUtil.getInstance();
    print('jsonOrders already exists!');
    try {
      // 将订单列表转为JSON字符串
      List<String> jsonOrders =
          orders.map((order) => jsonEncode(order.toJson())).toList();

      print('jsonOrders ${jsonOrders.length} already exists!');
      await storageUtil.setStringList('orders', jsonOrders);
    } catch (e, stackTrace) {
      print('Error fetching orders: $e');
      print('Stack trace: $stackTrace');
    }
  }

  // 添加新订单
  static Future<void> addOrder(Order newOrder) async {
    List<Order> orders = await loadOrders();
    // 检查是否已经存在相同的 orderId
    bool orderExists = orders.any((order) => order.tradeNo == newOrder.tradeNo);

    if (orderExists) {
      print('Order with orderId ${newOrder.tradeNo} already exists!');
    } else {
      // 如果订单不存在，则添加
      orders.add(newOrder);
      await saveOrders(orders); // 重新保存更新后的订单列表
      print('Order with orderId ${newOrder.tradeNo} added successfully.');
    }
  }

  static String? get deviceId => _deviceId;
  static String? get authToken => _authToken;
  static String get userLanguage => _userLanguage;

  static AppConfig get appConfig => _appConfig;
  static get eventBus => _eventBus;
  static get userInfo => _userInfo;
  static get encoding => _encoding;
  static get platform => _platform;
  static TextDirection get textDirection {
    return appConfig.derection == 'ltr' ? TextDirection.ltr : TextDirection.rtl;
  }

  /// 每次打开应用时调用的登录方法，用于检查是否需要跳转
  /// 这个方法应该与全局初始化分开调用
  static Future<Map<String, dynamic>?> checkLoginOnStartup() async {
    debugPrint('Checking login on startup with deviceId: $_deviceId');

    final response = await UserApi.info(params: {
      'unionId': _deviceId,
    });

    debugPrint(
        'Startup login response: ${response.code}, data: ${response.data}');

    Map<String, dynamic>? redirectInfo;

    if (response.data != null) {
      // 检查是否有跳转URL
      if (response.data!['bookId'] != null &&
          response.data!['bookId'].toString().isNotEmpty) {
        redirectInfo = {'bookId': response.data!['bookId']?.toString()};
      }

      debugPrint('redirectInfo - redirectInfo: ${redirectInfo}');
      // 更新token（如果有）
      // if (response.data!['token'] != null) {
      //   _authToken = response.data!['token'];
      //   await Storage.setString(tokenKey, _authToken!);
      //   await Storage.setString(authTokenSaveTime,
      //       DateTime.now().millisecondsSinceEpoch.toString());
      //   debugPrint('Token updated from startup login');
      // }
    } else {
      debugPrint(
          'Warning: Invalid startup response - code: ${response.code}, message: ${response.message}');
    }

    return redirectInfo;
  }
}

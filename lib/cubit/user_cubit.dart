import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../api/user_api.dart';
import '../models/user.dart';
import '../utils/global_shared_state.dart';
import '../utils/http_client.dart';

class UserInfoCubit extends Cubit<UserInfo> {
  UserInfoCubit() : super(UserInfo()) {
    refreshUserInfo();
  }

  _updateUserInfo(UserInfo user) {
    emit(user);
    GlobalSharedState.setUserInfo(user);
  }

  refreshUserInfo() async {
    StandardResponseBody<UserInfo> response = await UserApi.getMyUserInfo();
    // print('token:$response.data!');
    if (response.success) {
      _updateUserInfo(response.data!);
    }
  }

  changeAutoUnlockSetting(bool isAutoUnlock) async {
    await setConfig(
        isAutoUnlock: isAutoUnlock, isReceiveMessage: state.isReceiveMessage!);
    await refreshUserInfo();
  }

  changeMessageSetting(bool isReceiveMessage) async {
    await setConfig(
        isAutoUnlock: state.isAutoUnlock!, isReceiveMessage: isReceiveMessage);
    await refreshUserInfo();
  }

  setConfig(
      {required bool isAutoUnlock, required bool isReceiveMessage}) async {
    StandardResponseBody response = await UserApi.setConfig(
      isAutoUnlock: isAutoUnlock,
      isReceiveMessage: isReceiveMessage,
    );
    if (response.success) {
      // 配置更新成功
      debugPrint('配置更新成功');
    } else {
      // 配置更新失败
      debugPrint('配置更新失败: ${response.message}');
    }
  }
}

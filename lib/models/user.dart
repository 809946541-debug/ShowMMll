import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class UserInfo with _$UserInfo {
  const UserInfo._();

  static const int bindTypeUnbind = 0;
  static const int bindTypeEmail = 1;

  @JsonSerializable()
  factory UserInfo({
    @JsonKey(name: 'id') String? userId,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'nickName') String? nickname,
    @JsonKey(name: 'gender') int? gender,
    @JsonKey(name: 'tags') List<String>? tagList,
    @JsonKey(name: 'autoUnLock') bool? isAutoUnlock,
    @JsonKey(name: 'allowMsgPush') bool? isReceiveMessage,
    @JsonKey(name: 'subscriptionCount') int? subscriptionCount,
    @JsonKey(name: 'allUnlockVip') bool? allUnlockVip,
    @JsonKey(name: 'monthlySubscriptionVip') bool? monthlySubscriptionVip,
    @JsonKey(name: 'image') String? avatar,
    @JsonKey(name: 'bindType') int? bindType,
    @JsonKey(name: 'bookIds') List<String>? bookIds,
    @JsonKey(name: 'subscriptionVipFull') bool? subscriptionVipFull,
    @JsonKey(name: 'oldBookIds') List<String>? oldBookIds,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
}

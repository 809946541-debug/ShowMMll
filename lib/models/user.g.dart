// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      userId: json['id'] as String?,
      email: json['email'] as String?,
      nickname: json['nickName'] as String?,
      gender: (json['gender'] as num?)?.toInt(),
      tagList:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isAutoUnlock: json['autoUnLock'] as bool?,
      isReceiveMessage: json['allowMsgPush'] as bool?,
      subscriptionCount: (json['subscriptionCount'] as num?)?.toInt(),
      allUnlockVip: json['allUnlockVip'] as bool?,
      monthlySubscriptionVip: json['monthlySubscriptionVip'] as bool?,
      avatar: json['image'] as String?,
      bindType: (json['bindType'] as num?)?.toInt(),
      bookIds:
          (json['bookIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
      subscriptionVipFull: json['subscriptionVipFull'] as bool?,
      oldBookIds: (json['oldBookIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.userId,
      'email': instance.email,
      'nickName': instance.nickname,
      'gender': instance.gender,
      'tags': instance.tagList,
      'autoUnLock': instance.isAutoUnlock,
      'allowMsgPush': instance.isReceiveMessage,
      'subscriptionCount': instance.subscriptionCount,
      'allUnlockVip': instance.allUnlockVip,
      'monthlySubscriptionVip': instance.monthlySubscriptionVip,
      'image': instance.avatar,
      'bindType': instance.bindType,
      'bookIds': instance.bookIds,
      'subscriptionVipFull': instance.subscriptionVipFull,
      'oldBookIds': instance.oldBookIds,
    };

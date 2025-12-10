// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return _UserInfo.fromJson(json);
}

/// @nodoc
mixin _$UserInfo {
  @JsonKey(name: 'id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'nickName')
  String? get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  int? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<String>? get tagList => throw _privateConstructorUsedError;
  @JsonKey(name: 'autoUnLock')
  bool? get isAutoUnlock => throw _privateConstructorUsedError;
  @JsonKey(name: 'allowMsgPush')
  bool? get isReceiveMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscriptionCount')
  int? get subscriptionCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'allUnlockVip')
  bool? get allUnlockVip => throw _privateConstructorUsedError;
  @JsonKey(name: 'monthlySubscriptionVip')
  bool? get monthlySubscriptionVip => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'bindType')
  int? get bindType => throw _privateConstructorUsedError;
  @JsonKey(name: 'bookIds')
  List<String>? get bookIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscriptionVipFull')
  bool? get subscriptionVipFull => throw _privateConstructorUsedError;
  @JsonKey(name: 'oldBookIds')
  List<String>? get oldBookIds => throw _privateConstructorUsedError;

  /// Serializes this UserInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res, UserInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? userId,
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
      @JsonKey(name: 'oldBookIds') List<String>? oldBookIds});
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res, $Val extends UserInfo>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? nickname = freezed,
    Object? gender = freezed,
    Object? tagList = freezed,
    Object? isAutoUnlock = freezed,
    Object? isReceiveMessage = freezed,
    Object? subscriptionCount = freezed,
    Object? allUnlockVip = freezed,
    Object? monthlySubscriptionVip = freezed,
    Object? avatar = freezed,
    Object? bindType = freezed,
    Object? bookIds = freezed,
    Object? subscriptionVipFull = freezed,
    Object? oldBookIds = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      tagList: freezed == tagList
          ? _value.tagList
          : tagList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isAutoUnlock: freezed == isAutoUnlock
          ? _value.isAutoUnlock
          : isAutoUnlock // ignore: cast_nullable_to_non_nullable
              as bool?,
      isReceiveMessage: freezed == isReceiveMessage
          ? _value.isReceiveMessage
          : isReceiveMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      subscriptionCount: freezed == subscriptionCount
          ? _value.subscriptionCount
          : subscriptionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      allUnlockVip: freezed == allUnlockVip
          ? _value.allUnlockVip
          : allUnlockVip // ignore: cast_nullable_to_non_nullable
              as bool?,
      monthlySubscriptionVip: freezed == monthlySubscriptionVip
          ? _value.monthlySubscriptionVip
          : monthlySubscriptionVip // ignore: cast_nullable_to_non_nullable
              as bool?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      bindType: freezed == bindType
          ? _value.bindType
          : bindType // ignore: cast_nullable_to_non_nullable
              as int?,
      bookIds: freezed == bookIds
          ? _value.bookIds
          : bookIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      subscriptionVipFull: freezed == subscriptionVipFull
          ? _value.subscriptionVipFull
          : subscriptionVipFull // ignore: cast_nullable_to_non_nullable
              as bool?,
      oldBookIds: freezed == oldBookIds
          ? _value.oldBookIds
          : oldBookIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoImplCopyWith<$Res>
    implements $UserInfoCopyWith<$Res> {
  factory _$$UserInfoImplCopyWith(
          _$UserInfoImpl value, $Res Function(_$UserInfoImpl) then) =
      __$$UserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? userId,
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
      @JsonKey(name: 'oldBookIds') List<String>? oldBookIds});
}

/// @nodoc
class __$$UserInfoImplCopyWithImpl<$Res>
    extends _$UserInfoCopyWithImpl<$Res, _$UserInfoImpl>
    implements _$$UserInfoImplCopyWith<$Res> {
  __$$UserInfoImplCopyWithImpl(
      _$UserInfoImpl _value, $Res Function(_$UserInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? nickname = freezed,
    Object? gender = freezed,
    Object? tagList = freezed,
    Object? isAutoUnlock = freezed,
    Object? isReceiveMessage = freezed,
    Object? subscriptionCount = freezed,
    Object? allUnlockVip = freezed,
    Object? monthlySubscriptionVip = freezed,
    Object? avatar = freezed,
    Object? bindType = freezed,
    Object? bookIds = freezed,
    Object? subscriptionVipFull = freezed,
    Object? oldBookIds = freezed,
  }) {
    return _then(_$UserInfoImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      tagList: freezed == tagList
          ? _value._tagList
          : tagList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isAutoUnlock: freezed == isAutoUnlock
          ? _value.isAutoUnlock
          : isAutoUnlock // ignore: cast_nullable_to_non_nullable
              as bool?,
      isReceiveMessage: freezed == isReceiveMessage
          ? _value.isReceiveMessage
          : isReceiveMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      subscriptionCount: freezed == subscriptionCount
          ? _value.subscriptionCount
          : subscriptionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      allUnlockVip: freezed == allUnlockVip
          ? _value.allUnlockVip
          : allUnlockVip // ignore: cast_nullable_to_non_nullable
              as bool?,
      monthlySubscriptionVip: freezed == monthlySubscriptionVip
          ? _value.monthlySubscriptionVip
          : monthlySubscriptionVip // ignore: cast_nullable_to_non_nullable
              as bool?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      bindType: freezed == bindType
          ? _value.bindType
          : bindType // ignore: cast_nullable_to_non_nullable
              as int?,
      bookIds: freezed == bookIds
          ? _value._bookIds
          : bookIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      subscriptionVipFull: freezed == subscriptionVipFull
          ? _value.subscriptionVipFull
          : subscriptionVipFull // ignore: cast_nullable_to_non_nullable
              as bool?,
      oldBookIds: freezed == oldBookIds
          ? _value._oldBookIds
          : oldBookIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$UserInfoImpl extends _UserInfo {
  _$UserInfoImpl(
      {@JsonKey(name: 'id') this.userId,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'nickName') this.nickname,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'tags') final List<String>? tagList,
      @JsonKey(name: 'autoUnLock') this.isAutoUnlock,
      @JsonKey(name: 'allowMsgPush') this.isReceiveMessage,
      @JsonKey(name: 'subscriptionCount') this.subscriptionCount,
      @JsonKey(name: 'allUnlockVip') this.allUnlockVip,
      @JsonKey(name: 'monthlySubscriptionVip') this.monthlySubscriptionVip,
      @JsonKey(name: 'image') this.avatar,
      @JsonKey(name: 'bindType') this.bindType,
      @JsonKey(name: 'bookIds') final List<String>? bookIds,
      @JsonKey(name: 'subscriptionVipFull') this.subscriptionVipFull,
      @JsonKey(name: 'oldBookIds') final List<String>? oldBookIds})
      : _tagList = tagList,
        _bookIds = bookIds,
        _oldBookIds = oldBookIds,
        super._();

  factory _$UserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? userId;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'nickName')
  final String? nickname;
  @override
  @JsonKey(name: 'gender')
  final int? gender;
  final List<String>? _tagList;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tagList {
    final value = _tagList;
    if (value == null) return null;
    if (_tagList is EqualUnmodifiableListView) return _tagList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'autoUnLock')
  final bool? isAutoUnlock;
  @override
  @JsonKey(name: 'allowMsgPush')
  final bool? isReceiveMessage;
  @override
  @JsonKey(name: 'subscriptionCount')
  final int? subscriptionCount;
  @override
  @JsonKey(name: 'allUnlockVip')
  final bool? allUnlockVip;
  @override
  @JsonKey(name: 'monthlySubscriptionVip')
  final bool? monthlySubscriptionVip;
  @override
  @JsonKey(name: 'image')
  final String? avatar;
  @override
  @JsonKey(name: 'bindType')
  final int? bindType;
  final List<String>? _bookIds;
  @override
  @JsonKey(name: 'bookIds')
  List<String>? get bookIds {
    final value = _bookIds;
    if (value == null) return null;
    if (_bookIds is EqualUnmodifiableListView) return _bookIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'subscriptionVipFull')
  final bool? subscriptionVipFull;
  final List<String>? _oldBookIds;
  @override
  @JsonKey(name: 'oldBookIds')
  List<String>? get oldBookIds {
    final value = _oldBookIds;
    if (value == null) return null;
    if (_oldBookIds is EqualUnmodifiableListView) return _oldBookIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserInfo(userId: $userId, email: $email, nickname: $nickname, gender: $gender, tagList: $tagList, isAutoUnlock: $isAutoUnlock, isReceiveMessage: $isReceiveMessage, subscriptionCount: $subscriptionCount, allUnlockVip: $allUnlockVip, monthlySubscriptionVip: $monthlySubscriptionVip, avatar: $avatar, bindType: $bindType, bookIds: $bookIds, subscriptionVipFull: $subscriptionVipFull, oldBookIds: $oldBookIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            const DeepCollectionEquality().equals(other._tagList, _tagList) &&
            (identical(other.isAutoUnlock, isAutoUnlock) ||
                other.isAutoUnlock == isAutoUnlock) &&
            (identical(other.isReceiveMessage, isReceiveMessage) ||
                other.isReceiveMessage == isReceiveMessage) &&
            (identical(other.subscriptionCount, subscriptionCount) ||
                other.subscriptionCount == subscriptionCount) &&
            (identical(other.allUnlockVip, allUnlockVip) ||
                other.allUnlockVip == allUnlockVip) &&
            (identical(other.monthlySubscriptionVip, monthlySubscriptionVip) ||
                other.monthlySubscriptionVip == monthlySubscriptionVip) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.bindType, bindType) ||
                other.bindType == bindType) &&
            const DeepCollectionEquality().equals(other._bookIds, _bookIds) &&
            (identical(other.subscriptionVipFull, subscriptionVipFull) ||
                other.subscriptionVipFull == subscriptionVipFull) &&
            const DeepCollectionEquality()
                .equals(other._oldBookIds, _oldBookIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      email,
      nickname,
      gender,
      const DeepCollectionEquality().hash(_tagList),
      isAutoUnlock,
      isReceiveMessage,
      subscriptionCount,
      allUnlockVip,
      monthlySubscriptionVip,
      avatar,
      bindType,
      const DeepCollectionEquality().hash(_bookIds),
      subscriptionVipFull,
      const DeepCollectionEquality().hash(_oldBookIds));

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      __$$UserInfoImplCopyWithImpl<_$UserInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoImplToJson(
      this,
    );
  }
}

abstract class _UserInfo extends UserInfo {
  factory _UserInfo(
          {@JsonKey(name: 'id') final String? userId,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'nickName') final String? nickname,
          @JsonKey(name: 'gender') final int? gender,
          @JsonKey(name: 'tags') final List<String>? tagList,
          @JsonKey(name: 'autoUnLock') final bool? isAutoUnlock,
          @JsonKey(name: 'allowMsgPush') final bool? isReceiveMessage,
          @JsonKey(name: 'subscriptionCount') final int? subscriptionCount,
          @JsonKey(name: 'allUnlockVip') final bool? allUnlockVip,
          @JsonKey(name: 'monthlySubscriptionVip')
          final bool? monthlySubscriptionVip,
          @JsonKey(name: 'image') final String? avatar,
          @JsonKey(name: 'bindType') final int? bindType,
          @JsonKey(name: 'bookIds') final List<String>? bookIds,
          @JsonKey(name: 'subscriptionVipFull') final bool? subscriptionVipFull,
          @JsonKey(name: 'oldBookIds') final List<String>? oldBookIds}) =
      _$UserInfoImpl;
  _UserInfo._() : super._();

  factory _UserInfo.fromJson(Map<String, dynamic> json) =
      _$UserInfoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get userId;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'nickName')
  String? get nickname;
  @override
  @JsonKey(name: 'gender')
  int? get gender;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tagList;
  @override
  @JsonKey(name: 'autoUnLock')
  bool? get isAutoUnlock;
  @override
  @JsonKey(name: 'allowMsgPush')
  bool? get isReceiveMessage;
  @override
  @JsonKey(name: 'subscriptionCount')
  int? get subscriptionCount;
  @override
  @JsonKey(name: 'allUnlockVip')
  bool? get allUnlockVip;
  @override
  @JsonKey(name: 'monthlySubscriptionVip')
  bool? get monthlySubscriptionVip;
  @override
  @JsonKey(name: 'image')
  String? get avatar;
  @override
  @JsonKey(name: 'bindType')
  int? get bindType;
  @override
  @JsonKey(name: 'bookIds')
  List<String>? get bookIds;
  @override
  @JsonKey(name: 'subscriptionVipFull')
  bool? get subscriptionVipFull;
  @override
  @JsonKey(name: 'oldBookIds')
  List<String>? get oldBookIds;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

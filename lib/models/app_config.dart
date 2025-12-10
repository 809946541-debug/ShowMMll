import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config.freezed.dart';
part 'app_config.g.dart';

@freezed
abstract class CoverConfigItem with _$CoverConfigItem {
  @JsonSerializable()
  factory CoverConfigItem({
    @JsonKey(name: 'imagePath') String? imagePath,
  }) = _CoverConfigItem;

  factory CoverConfigItem.fromJson(Map<String, dynamic> json) =>
      _$CoverConfigItemFromJson(json);
}

@freezed
abstract class SplashConfigItem with _$SplashConfigItem {
  @JsonSerializable()
  factory SplashConfigItem({
    @JsonKey(name: 'imagePath') String? imagePath,
    @JsonKey(name: 'navPath') String? navPath,
    @JsonKey(name: 'query') String? query,
  }) = _SplashConfigItem;

  factory SplashConfigItem.fromJson(Map<String, dynamic> json) =>
      _$SplashConfigItemFromJson(json);
}

@freezed
abstract class CoverConfig with _$CoverConfig {
  @JsonSerializable()
  factory CoverConfig({
    @JsonKey(name: 'version') double? version,
    @JsonKey(name: 'items') List<CoverConfigItem>? itemList,
  }) = _CoverConfig;

  factory CoverConfig.fromJson(Map<String, dynamic> json) =>
      _$CoverConfigFromJson(json);
}

@freezed
abstract class SplashConfig with _$SplashConfig {
  @JsonSerializable()
  factory SplashConfig({
    @JsonKey(name: 'version') double? version,
    @JsonKey(name: 'timeSpan') int? timeSpan,
    @JsonKey(name: 'items') List<SplashConfigItem>? itemList,
  }) = _SplashConfig;

  factory SplashConfig.fromJson(Map<String, dynamic> json) =>
      _$SplashConfigFromJson(json);
}

@freezed
abstract class AndroidVersionInfo with _$AndroidVersionInfo {
  @JsonSerializable()
  factory AndroidVersionInfo({
    @JsonKey(name: 'version') int? version,
    @JsonKey(name: 'auditBuild') int? auditBuild,
    @JsonKey(name: 'audit') bool? audit,
    @JsonKey(name: 'updateUrl') String? updateUrl,
    @JsonKey(name: 'updateMsg') String? updateMsg,
  }) = _AndroidVersionInfo;

  factory AndroidVersionInfo.fromJson(Map<String, dynamic> json) =>
      _$AndroidVersionInfoFromJson(json);
}

@freezed
abstract class IOSVersionInfo with _$IOSVersionInfo {
  @JsonSerializable()
  factory IOSVersionInfo({
    @JsonKey(name: 'version') int? version,
    @JsonKey(name: 'auditBuild') int? auditBuild,
    @JsonKey(name: 'audit') bool? audit,
    @JsonKey(name: 'updateUrl') String? updateUrl,
    @JsonKey(name: 'updateMsg') String? updateMsg,
  }) = _IOSVersionInfo;

  factory IOSVersionInfo.fromJson(Map<String, dynamic> json) =>
      _$IOSVersionInfoFromJson(json);
}

@freezed
abstract class AppConfig with _$AppConfig {
  @JsonSerializable()
  factory AppConfig({
    @JsonKey(name: 'splash') SplashConfig? splashConfig,
    @JsonKey(name: 'cover') CoverConfig? coverConfig,
    @JsonKey(name: 'vipType') String? vipType,
    @JsonKey(name: 'langOption') Map<String, String>? langOption,
    @JsonKey(name: 'derection') String? derection,
    @JsonKey(name: 'android') AndroidVersionInfo? androidVersionInfo,
    @JsonKey(name: 'iOS') IOSVersionInfo? iosVersionInfo,
    // @JsonKey(name: 'ossUrl') String? ossUrl,
    @JsonKey(name: 'langs') List<Map<String, dynamic>>? languageList,
    @JsonKey(name: 'dialogue') List<Map<String, dynamic>>? openingDialog,
    @JsonKey(name: 'logins') Map<String, dynamic>? loginDialog,
    @JsonKey(name: 'updateForced') bool? updateForced,
    @JsonKey(name: 'encoding') String? encoding,
    @JsonKey(name: 'recommendMaxCount') int? recommendMaxCount,
    @JsonKey(name: 'timeMinutes') int? timeMinutes,
    @JsonKey(name: 'timeEnable') bool? timeEnable,
    @JsonKey(name: 'isFacebookLoginEnabled') bool? isFacebookLoginEnabled,
    @JsonKey(name: 'isHideBookSubscription') bool? isHideBookSubscription,
    @JsonKey(name: 'lang') String? lang,
  }) = _AppConfig;

  factory AppConfig.fromJson(Map<String, dynamic> json) =>
      _$AppConfigFromJson(json);

  const AppConfig._();
}

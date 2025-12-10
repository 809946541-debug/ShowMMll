// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoverConfigItemImpl _$$CoverConfigItemImplFromJson(
        Map<String, dynamic> json) =>
    _$CoverConfigItemImpl(
      imagePath: json['imagePath'] as String?,
    );

Map<String, dynamic> _$$CoverConfigItemImplToJson(
        _$CoverConfigItemImpl instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
    };

_$SplashConfigItemImpl _$$SplashConfigItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SplashConfigItemImpl(
      imagePath: json['imagePath'] as String?,
      navPath: json['navPath'] as String?,
      query: json['query'] as String?,
    );

Map<String, dynamic> _$$SplashConfigItemImplToJson(
        _$SplashConfigItemImpl instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
      'navPath': instance.navPath,
      'query': instance.query,
    };

_$CoverConfigImpl _$$CoverConfigImplFromJson(Map<String, dynamic> json) =>
    _$CoverConfigImpl(
      version: (json['version'] as num?)?.toDouble(),
      itemList: (json['items'] as List<dynamic>?)
          ?.map((e) => CoverConfigItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CoverConfigImplToJson(_$CoverConfigImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'items': instance.itemList,
    };

_$SplashConfigImpl _$$SplashConfigImplFromJson(Map<String, dynamic> json) =>
    _$SplashConfigImpl(
      version: (json['version'] as num?)?.toDouble(),
      timeSpan: (json['timeSpan'] as num?)?.toInt(),
      itemList: (json['items'] as List<dynamic>?)
          ?.map((e) => SplashConfigItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SplashConfigImplToJson(_$SplashConfigImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'timeSpan': instance.timeSpan,
      'items': instance.itemList,
    };

_$AndroidVersionInfoImpl _$$AndroidVersionInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$AndroidVersionInfoImpl(
      version: (json['version'] as num?)?.toInt(),
      auditBuild: (json['auditBuild'] as num?)?.toInt(),
      audit: json['audit'] as bool?,
      updateUrl: json['updateUrl'] as String?,
      updateMsg: json['updateMsg'] as String?,
    );

Map<String, dynamic> _$$AndroidVersionInfoImplToJson(
        _$AndroidVersionInfoImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'auditBuild': instance.auditBuild,
      'audit': instance.audit,
      'updateUrl': instance.updateUrl,
      'updateMsg': instance.updateMsg,
    };

_$IOSVersionInfoImpl _$$IOSVersionInfoImplFromJson(Map<String, dynamic> json) =>
    _$IOSVersionInfoImpl(
      version: (json['version'] as num?)?.toInt(),
      auditBuild: (json['auditBuild'] as num?)?.toInt(),
      audit: json['audit'] as bool?,
      updateUrl: json['updateUrl'] as String?,
      updateMsg: json['updateMsg'] as String?,
    );

Map<String, dynamic> _$$IOSVersionInfoImplToJson(
        _$IOSVersionInfoImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'auditBuild': instance.auditBuild,
      'audit': instance.audit,
      'updateUrl': instance.updateUrl,
      'updateMsg': instance.updateMsg,
    };

_$AppConfigImpl _$$AppConfigImplFromJson(Map<String, dynamic> json) =>
    _$AppConfigImpl(
      splashConfig: json['splash'] == null
          ? null
          : SplashConfig.fromJson(json['splash'] as Map<String, dynamic>),
      coverConfig: json['cover'] == null
          ? null
          : CoverConfig.fromJson(json['cover'] as Map<String, dynamic>),
      vipType: json['vipType'] as String?,
      langOption: (json['langOption'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      derection: json['derection'] as String?,
      androidVersionInfo: json['android'] == null
          ? null
          : AndroidVersionInfo.fromJson(
              json['android'] as Map<String, dynamic>),
      iosVersionInfo: json['iOS'] == null
          ? null
          : IOSVersionInfo.fromJson(json['iOS'] as Map<String, dynamic>),
      languageList: (json['langs'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      openingDialog: (json['dialogue'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      loginDialog: json['logins'] as Map<String, dynamic>?,
      updateForced: json['updateForced'] as bool?,
      encoding: json['encoding'] as String?,
      recommendMaxCount: (json['recommendMaxCount'] as num?)?.toInt(),
      timeMinutes: (json['timeMinutes'] as num?)?.toInt(),
      timeEnable: json['timeEnable'] as bool?,
      isFacebookLoginEnabled: json['isFacebookLoginEnabled'] as bool?,
      isHideBookSubscription: json['isHideBookSubscription'] as bool?,
      lang: json['lang'] as String?,
    );

Map<String, dynamic> _$$AppConfigImplToJson(_$AppConfigImpl instance) =>
    <String, dynamic>{
      'splash': instance.splashConfig,
      'cover': instance.coverConfig,
      'vipType': instance.vipType,
      'langOption': instance.langOption,
      'derection': instance.derection,
      'android': instance.androidVersionInfo,
      'iOS': instance.iosVersionInfo,
      'langs': instance.languageList,
      'dialogue': instance.openingDialog,
      'logins': instance.loginDialog,
      'updateForced': instance.updateForced,
      'encoding': instance.encoding,
      'recommendMaxCount': instance.recommendMaxCount,
      'timeMinutes': instance.timeMinutes,
      'timeEnable': instance.timeEnable,
      'isFacebookLoginEnabled': instance.isFacebookLoginEnabled,
      'isHideBookSubscription': instance.isHideBookSubscription,
      'lang': instance.lang,
    };

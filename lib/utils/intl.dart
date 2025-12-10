import 'global_shared_state.dart';

extension G11NString on String {
  String g11n(String intlKey) {
    // 返回对应的语言值，如果找不到，则返回当前字符串
    return GlobalSharedState.appConfig.langOption?[intlKey] ?? this;
  }

  String g11nParam(String intlKey, {List<Object>? args}) {
    // 获取对应的语言值
    var langValue = GlobalSharedState.appConfig.langOption?[intlKey];

    // 如果没有找到匹配的 langValue，返回空字符串
    if (langValue == null) return this;
    try {
      // 如果找到了匹配的 langValue，使用格式化输出字符串
      return _formatString(langValue, args);
    } catch (e) {
      // 捕获异常并返回空字符串
      return '';
    }
  }

  // 格式化字符串的辅助方法
  String _formatString(String format, List<Object>? args) {
    if (args == null || args.isEmpty) {
      return format;
    }

    // 使用正则表达式来手动格式化
    for (int i = 0; i < args.length; i++) {
      format = format.replaceAll('{$i}', args[i].toString());
    }
    return format;
  }
}

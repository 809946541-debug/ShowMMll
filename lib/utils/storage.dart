import 'package:shared_preferences/shared_preferences.dart';

class StorageUtil {
  SharedPreferences? _instance;

  static StorageUtil? _selfInstance;

  static getInstance() async {
    _selfInstance ??= await createInstance();
    return _selfInstance!;
  }

  setInstance(instance) {
    _instance = instance;
  }

  static createInstance() async {
    var util = StorageUtil();
    util.setInstance(await SharedPreferences.getInstance());
    return util;
  }

  get(key) async {
    return _instance!.get(key);
  }

  getBool(key) async {
    return _instance!.getBool(key);
  }

  setBool(key, value) async {
    return _instance!.setBool(key, value);
  }

  setString(key, string) async {
    return _instance!.setString(key, string);
  }

  setInt(key, value) async {
    return _instance!.setInt(key, value);
  }

  getInt(key) async {
    return _instance!.getInt(key);
  }

  remove(key) async {
    return _instance!.remove(key);
  }

  setStringList(key, value) async {
    return _instance!.setStringList(key, value);
  }

  getStringList(key) async {
    return _instance!.getStringList(key);
  }
}

import 'package:shared_preferences/shared_preferences.dart';

import 'model/user.dart';

enum Shared { loggedIn, id, name, email, phone, image, points, credit, token }

class MySharedPreferences {
  MySharedPreferences._();

  late SharedPreferences _sharedPref;
  static MySharedPreferences? _instance;

  factory MySharedPreferences() {
    return _instance ??= MySharedPreferences._();
  }

  Future<void> initial() async =>
      _sharedPref = await SharedPreferences.getInstance();

  void saveLogin(User user) async {
    await _sharedPref.setBool(Shared.loggedIn.name, true);
    await _sharedPref.setInt(Shared.id.name, user.id);
    await _sharedPref.setString(Shared.email.name, user.email);
    await _sharedPref.setString(Shared.name.name, user.name);
    await _sharedPref.setString(Shared.token.name, user.token);
  }

  Future<String?> getData() async {
    return _sharedPref.getString(Shared.loggedIn.name);
    /* await _sharedPref.getBool(Shared.loggedIn.name);
    await _sharedPref.getBool(Shared.loggedIn.name);
    await _sharedPref.getBool(Shared.loggedIn.name);
    await _sharedPref.getBool(Shared.loggedIn.name);*/
  }

  T? getValueFor<T>({required String key}) {
    if (_sharedPref.containsKey(key)) {
      return _sharedPref.get(key) as T?;
    }
    return null;
  }

  void clear() {
    _sharedPref.clear();
  }
}

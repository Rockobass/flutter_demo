import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefUtil {

  final String tokenPrefs = "token";
  final String emailPrefs = 'email';

  Future<bool> setToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(tokenPrefs, token);
  }

  Future<String> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(tokenPrefs) ?? '';
  }

  Future<bool> setEmail(String email) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(emailPrefs, email);
  }

  Future<String> getEmail() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(emailPrefs) ?? '未登录';
  }



}
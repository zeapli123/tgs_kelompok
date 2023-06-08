import 'dart:convert';
// import 'dart:ffi';

import 'package:shared_preferences/shared_preferences.dart';

import '../model/user.dart';
import 'package:get/get.dart';

class EventPref {
  static void saveUser(User user) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('user', jsonEncode(user));
  }

  static Future<User?> getUser() async {
    User? user;
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? stringUser = pref.getString('user');
    if (stringUser != null) {
      Map<String, dynamic> mapUser = jsonDecode(stringUser);
      user = User.fromJson(mapUser);
    }
    return user;
  }

  static void clear() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.clear();
  }
}

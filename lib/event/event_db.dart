import 'dart:convert';
import 'package:tgs_kelompok/screen/login.dart';
import 'package:tgs_kelompok/config/api.dart';
import 'package:tgs_kelompok/model/user.dart';
import 'package:tgs_kelompok/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import '../screen/login.dart';
import '../widget/info.dart';
import 'event_pref.dart';

class EventDb {
  static Future<User?> login(String username, String pass) async {
    User? user;
    try {
      var response = await http.post(Uri.parse(Api.login), body: {
        'username': username,
        'pass': pass,
      });
      if (response.statusCode == 200) {
        var responBody = jsonDecode(response.body);
        if (responBody['success']) {
          user = User.fromJson(responBody['user']);
          EventPref.saveUser(user);
          Info.snackbar('Login Berhasil');
          Future.delayed(Duration(milliseconds: 1700), () {
            Get.off(
              Login(),
            );
          });
        } else {
          Info.snackbar('Login Gagal');
        }
      } else {
        Info.snackbar('Request Login Gagal');
      }
    } catch (e) {
      print(e);
    }
    return user;
  }
}

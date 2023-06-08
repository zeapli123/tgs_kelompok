import 'package:flutter/material.dart';
import 'package:tgs_kelompok/model/user.dart';
import 'package:get/get.dart';

class Cuser extends GetxController {
  Rx<User> _user = User().obs;
  User get user => _user.value;

  void setUser(User dataUser) => _user.value = dataUser;
}

import 'package:tgs_kelompok/config/asset.dart';
import 'package:tgs_kelompok/event/event_db.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
// import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:tgs_kelompok/model/user.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _controllerUsername = TextEditingController();
  var _controllerPass = TextEditingController();
  var _fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(color: Asset.colorSecondary),
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(left: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Who Jing',
                    style: TextStyle(
                      fontSize: 30,
                      color: Asset.colorAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Form(
              key: _fromKey,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) =>
                          value == '' ? 'Jangan Kosong' : null,
                      controller: _controllerUsername,
                      style: TextStyle(
                        color: Asset.colorPrimaryDark,
                      ),
                      decoration: InputDecoration(
                          hintText: 'username',
                          hintStyle: TextStyle(
                            color: Asset.colorPrimaryDark,
                          ),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Asset.colorPrimaryDark,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Asset.colorPrimary,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Asset.colorPrimary,
                              width: 1,
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.people,
                            color: Asset.colorPrimaryDark,
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      validator: (value) =>
                          value == '' ? 'Jangan Kosong' : null,
                      controller: _controllerPass,
                      style: TextStyle(
                        color: Asset.colorPrimaryDark,
                      ),
                      decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Asset.colorPrimaryDark,
                          ),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Asset.colorPrimaryDark,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Asset.colorPrimary,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Asset.colorPrimary,
                              width: 1,
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.vpn_key,
                            color: Asset.colorPrimaryDark,
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Asset.colorSecondary),
                      width: double.infinity,
                      child: InkWell(
                        onTap: () {
                          if (_fromKey.currentState!.validate()) {
                            EventDb.login(
                                _controllerUsername.text, _controllerPass.text);
                            _controllerUsername.clear();
                            _controllerPass.clear();
                          }
                        },
                        borderRadius: BorderRadius.circular(10),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 12),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

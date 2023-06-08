import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tgs_kelompok/event/event_db.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _controllerUsername = TextEditingController();
  var _controllerPass = TextEditingController();
  var _fromKey = GlobalKey<FormState>();
  bool passwordobscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              //bagian untuk memberikan tinggi jarak  menu  dari appbar
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 25),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.start, //Bagian membuat List Menu
                    children: [
                      _menuItem(title: 'Home'),
                      _menuItem(title: 'About us'),
                      _menuItem(title: 'Contact us'),
                      _menuItem(title: 'Help'),
                    ],
                  ),
                ),
                Padding(
                  //Bagian membuat menu Sign dan register
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 25),
                  child: Row(
                    children: [
                      _menuItem(title: 'Sign In', isActive: true),
                      _registerButton()
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              //bagian pembuatan decoration text
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 25),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 360,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sign in to\nMy Application',
                          style: TextStyle(
                              fontSize: 45, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "If you don't have an account",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "You Can,",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 15),
                            GestureDetector(
                              onTap: () {
                                print(MediaQuery.of(context).size.width);
                              },
                              child: Text(
                                "Register Here!",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'images/illustration-2.png',
                          width: 500,
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'images/illustration-1.png',
                    width: 300,
                  ),
                  SizedBox(
                    //bagian untuk memberikan jarak antara gambar dan menu login
                    width: 150,
                  ),
                  Padding(
                    //bagian membuat login
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height / 50),
                    child: Container(
                      width: 320,
                      child: Form(
                        key: _fromKey,
                        child: Column(
                          children: [
                            TextFormField(
                              //bagian from login username
                              validator: (value) =>
                                  value == '' ? 'Jangan Kosong' : null,
                              controller: _controllerUsername,
                              style: TextStyle(
                                color: Colors.redAccent,
                              ),
                              decoration: InputDecoration(
                                hintText: 'username',
                                hintStyle: TextStyle(
                                  color: Colors.yellowAccent,
                                ),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 1,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.green,
                                    width: 1,
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.people,
                                  color: Colors.yellow,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              //bagian form login password
                              validator: (value) =>
                                  value == '' ? 'Jangan Kosong' : null,
                              controller: _controllerPass,
                              style: TextStyle(
                                color: Colors.redAccent,
                              ),
                              obscureText: passwordobscured,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                counterText: 'Forgot password?',
                                suffixIcon: InkWell(
                                  onTap: _togglePasswordView,
                                  child: Icon(passwordobscured
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                ),
                                hintStyle: TextStyle(
                                  color: Colors.yellowAccent,
                                ),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 1,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.green,
                                    width: 1,
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.vpn_key,
                                  color: Colors.yellow,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue),
                              width: double.infinity,
                              child: InkWell(
                                onTap: () {
                                  if (_fromKey.currentState!.validate()) {
                                    EventDb.login(_controllerUsername.text,
                                        _controllerPass.text);
                                    _controllerUsername.clear();
                                    _controllerPass.clear();
                                  }
                                },
                                borderRadius: BorderRadius.circular(10),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 12),
                                  child: Text(
                                    'Sign in',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(children: [
                              //bagain pemberian text or continue with
                              Expanded(
                                child: Divider(
                                  color: Colors.grey[300],
                                  height: 50,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text("Or continue with"),
                              ),
                              Expanded(
                                child: Divider(
                                  color: Colors.grey[400],
                                  height: 50,
                                ),
                              ),
                            ]),
                            SizedBox(height: 40),
                            Row(
                              //bagain pemberian logo login google,github,facebook
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _loginWithButton(images: 'images/google.png'),
                                _loginWithButton(
                                    images: 'images/github.png',
                                    isActive: true),
                                _loginWithButton(images: 'images/facebook.png'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _togglePasswordView() {
    // if (passwordobscured == true) {
    //   passwordobscured = false;
    // } else {
    //   passwordobscured = true;
    // }
    setState(() {
      passwordobscured = !passwordobscured;
    });
  }
}

Widget _registerButton() {
  //bagain widget register
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Color.fromARGB(255, 204, 203, 203),
          spreadRadius: 10,
          blurRadius: 12,
        ),
      ],
    ),
    child: Text(
      'Register',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black54,
      ),
    ),
  );
}

Widget _menuItem({String title = 'Title Menu', isActive = false}) {
  //bagian widget menuItem list
  return Padding(
    padding: const EdgeInsets.only(right: 75),
    child: MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Column(
        children: [
          Text(
            '$title',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isActive ? Colors.deepPurple : Colors.grey,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          isActive
              ? Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(30),
                  ),
                )
              : SizedBox()
        ],
      ),
    ),
  );
}

Widget _loginWithButton({required String images, bool isActive = true}) {
  //bagain wigdget menu login google,github,dan facebook
  return Container(
    width: 90,
    height: 70,
    decoration: isActive
        ? BoxDecoration(
            color: Color.fromARGB(108, 255, 255, 255),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 255, 254, 254),
                spreadRadius: 10,
                blurRadius: 30,
              )
            ],
            borderRadius: BorderRadius.circular(15),
          )
        : BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color.fromARGB(255, 255, 254, 254)),
          ),
    child: Center(
        child: Container(
      decoration: isActive
          ? BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(35),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 202, 200, 200),
                  spreadRadius: 2,
                  blurRadius: 15,
                )
              ],
            )
          : BoxDecoration(),
      child: Image.asset(
        '$images',
        width: 35,
      ),
    )),
  );
}

import 'package:tgs_kelompok/config/asset.dart';
import 'package:tgs_kelompok/event/event_db.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
// import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:tgs_kelompok/model/user.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginGooglePage extends StatefulWidget {
  const LoginGooglePage({Key? key}) : super(key: key);

  @override
  State<LoginGooglePage> createState() => _LoginGooglePageState();
}

class _LoginGooglePageState extends State<LoginGooglePage> {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBiglDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  var _controllerUsername = TextEditingController();
  var _controllerPass = TextEditingController();
  var _fromKey = GlobalKey<FormState>();

  bool passwordobscured = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/images/teknokrat.jpg",
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,
              ),
              Stack(
                children: <Widget>[
                  Positioned(
                    left: -getBiglDiameter(context) / 2,
                    top: -getBiglDiameter(context) / 2,
                    child: Container(
                      width: getBiglDiameter(context),
                      height: getBiglDiameter(context),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(245, 242, 242, 204),
                              Color.fromRGBO(248, 247, 247, 0.373)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 140,
                      left: 0,
                      child: Container(
                        margin: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Login",
                          style: GoogleFonts.lobster(
                            color: Colors.redAccent,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            
                          ),
                        ),
                      )),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/images/top1.png",
                      width: size.width,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/images/top2.png",
                      width: size.width,
                    ),
                  ),
                ],
              ),

              // Stack(
              //   children: <Widget>[
              //     Positioned(
              //       left: -getBiglDiameter(context) / 7,
              //       top: -getBiglDiameter(context) / 7,
              //       child: Container(
              //         width: getBiglDiameter(context),
              //         height: getBiglDiameter(context),
              //         decoration: BoxDecoration(
              //           shape: BoxShape.circle,
              //           gradient: LinearGradient(
              //               colors: [
              //                 Color.fromRGBO(252, 8, 8, 0.329),
              //                 Color.fromRGBO(248, 112, 112, 0.219)
              //               ],
              //               begin: Alignment.topCenter,
              //               end: Alignment.bottomCenter),
              //         ),
              //       ),
              //     )
              //   ],
              // ),

              //
              //      Stack(
              //        children:     <Widget>[
              //        Positioned(
              //                 left: -getBiglDiameter(context) / 7,
              //             top: -getBiglDiameter(context) / 3,
              //            child: Container(
              //              child: Center(
              //                child: Text("UNIVERSITAS TEKNOKRAT INDONESIA",
              //                 style: TextStyle(
              //                 fontFamily: "Pacifico",
              //                 fontSize: 20,
              //                 color: Colors.white),
              //          ),
              //              ),
              //              width: getBiglDiameter(context),
              //     height: getBiglDiameter(context),
              //
              //                              decoration: const BoxDecoration(
              //                                  shape: BoxShape.circle,
              //                                  gradient: LinearGradient(
              //                                      colors: [Color(0xFFB226B2), Color(0xFFFF4891).withOpacity(opacity)],
              //                                      begin: Alignment.topCenter,
              //                                      end: Alignment.bottomCenter
              //                                  )),
              //            ),
              //        ),
              // ]
              //      ) ,
              //
              Stack(children: <Widget>[
                Positioned(
                  right: -getBiglDiameter(context) / 2,
                  bottom: -getBiglDiameter(context) / 2,
                  child: Container(
                    width: getBiglDiameter(context),
                    height: getBiglDiameter(context),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(252, 8, 8, 0.205),
                              Color.fromRGBO(248, 112, 112, 0.376)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/images/bottom1.png",
                    width: size.width,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/images/bottom2.png",
                    width: size.width,
                  ),
                ),
              ]),

              Stack(
                children: <Widget>[
                  Positioned(
                    left: -getBiglDiameter(context) / 5,
                    bottom: -getBiglDiameter(context) / 7,
                    child: Container(
                      width: getBiglDiameter(context),
                      height: getBiglDiameter(context),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(238, 234, 234, 0.075),
                              Color.fromRGBO(250, 249, 249, 0.216)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                    ),
                  )
                ],
              ),
              // Positioned(
              //     top: 20,
              //     child: Container(
              //       child: Text(
              //         " UNIVERSITAS "
              //             "TEKNOKRAT "
              //             "INDONESIA ",
              //         style: GoogleFonts.montserrat(
              //             color: Colors.red,
              //             fontSize: 20,
              //             fontWeight: FontWeight.bold),
              //       ),
              //     )),
              // Positioned(
              //   top: 0,
              //   right: 10,
              //   child: Column(
              //     children: [
              //       Container(
              //           margin: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
              //           alignment: Alignment.topCenter,
              //           height: 80,
              //           width: 80,
              //           decoration: BoxDecoration(
              //               image: DecorationImage(
              //                   image: AssetImage("assets/images/lg_1.jpg")),
              //               borderRadius: BorderRadius.circular(55),
              //               border: Border.all(
              //                   color: Colors.white,
              //                   style: BorderStyle.solid,
              //                   width: 2))),
              //     ],
              //   ),
              // ),

              Positioned(
                top:10,
                left: 1,
               right: 1,
                child: Container(
                  // padding: EdgeInsets.fromLTRB(50, 10, 10, 50),
                    alignment: Alignment.topCenter,
                    height:100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                            image: AssetImage("assets/images/teknokrat2.png",)),
                      )),
              ),

              // Image.asset("assets/lg_1.jpg",),

              Form(
                key: _fromKey,
                child: Positioned(
                    bottom: 30,
                    left: 10,
                    right: 10,
                    top: 200,
                    child: Card(
                      color: Colors.black.withOpacity(0.20),
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextFormField(
                            //bagian from login username
                            validator: (value) =>
                                value == '' ? 'Jangan Kosong' : null,
                            controller: _controllerUsername,
                            style: TextStyle(
                              color: Colors.white,
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
                          // Text(
                          //   "Cari tempat ngopi, sekarang !",
                          //   style: GoogleFonts.montserrat(
                          //       fontSize: 20,
                          //       color: Colors.white,
                          //       fontWeight: FontWeight.bold),
                          // ),
                        ),
                        // SizedBox(
                        //   height: 15,
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextFormField(
                            //bagian form login password
                            validator: (value) =>
                                value == '' ? 'Jangan Kosong' : null,
                            controller: _controllerPass,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            obscureText: passwordobscured,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              counterText: 'Forgot password?',
                              counterStyle: TextStyle(
                                  color: Colors.yellowAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                              suffixIcon: InkWell(
                                onTap: _togglePasswordView,
                                child: Icon(
                                  passwordobscured
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.yellowAccent,
                                ),
                              ),
                              // Icon(Icons.visibility_off, color: Colors.white),

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
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
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
                        ),
                        // SizedBox(
                        //   height: 3,
                        // ),

                        Row(children: [
                          //bagain pemberian text or continue with
                          Expanded(
                            child: Divider(
                              color: Colors.white,
                              height: 50,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Or continue with",
                              style: TextStyle(
                                  color: Colors.yellowAccent, fontSize: 17),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.white,
                              height: 50,
                            ),
                          ),
                        ]),
                        SizedBox(height: 3),
                        Row(
                          //bagain pemberian logo login google,github,facebook
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                    // margin: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                                    // alignment: Alignment.topCenter,
                                    height: 55,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/logo_google.jpg")),
                                        borderRadius: BorderRadius.circular(55),
                                        border: Border.all(
                                          color: Colors.white,
                                          style: BorderStyle.solid,
                                          // width: 2
                                        ))),
                                Text(
                                  'google',
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                    // margin: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                                    // alignment: Alignment.topCenter,
                                    height: 55,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                          "assets/images/GitHub.jpg",
                                        )),
                                        borderRadius: BorderRadius.circular(55),
                                        border: Border.all(
                                          color: Colors.white,
                                          style: BorderStyle.solid,
                                          // width: 2
                                        ))),
                                Text('github',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),

                            Column(
                              children: [
                                InkWell(
                                  onTap:(){},

                                  child: Container(
                                      // margin: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                                      // alignment: Alignment.topCenter,
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/facebook1.jpg")),
                                          borderRadius: BorderRadius.circular(55),
                                          border: Border.all(
                                            color: Colors.white,
                                            style: BorderStyle.solid,
                                            // width: 2
                                          ))),
                                ),
                                Text('Facebook',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),

                            // _loginWithButton(images: 'images/google.png'),
                            // _loginWithButton(
                            //     images: 'images/github.png',
                            //     isActive: true),
                            // _loginWithButton(images: 'images/facebook.png'),
                          ],
                        ),
                        // Padding(
                        //   padding:
                        //       const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                        //   child: Text(
                        //       "Untuk menikmati semua fitur kami, Anda perlu terhubung terlebih dahulu",
                        //       textAlign: TextAlign.center,
                        //       style: GoogleFonts.montserrat(
                        //           fontSize: 12, color: Colors.white)),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(
                        //       left: 16, right: 16, bottom: 12),
                        //   child: Card(
                        //     child: Padding(
                        //       padding: const EdgeInsets.all(14.0),
                        //       child: Row(
                        //         mainAxisAlignment: MainAxisAlignment.center,
                        //         children: [
                        //           Image.asset(
                        //             "assets/logo_google.jpg",
                        //             width: 30,
                        //           ),
                        //           SizedBox(width: 30),
                        //           Text("Login Sekarang",
                        //               style: GoogleFonts.montserrat(fontSize: 20))
                        //
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // )
                      ]),
                    )),
              )
            ],
          ),
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

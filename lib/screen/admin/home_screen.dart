import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../config/asset.dart';
import '../../event/event_pref.dart';
import '../login.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class HOMESCREEN extends StatefulWidget {
  const HOMESCREEN({Key? key}) : super(key: key);

  @override
  State<HOMESCREEN> createState() => _HOMESCREENState();
}

class _HOMESCREENState extends State<HOMESCREEN> {
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //code untuk menampilkan icon button dan slidder
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Asset.colorSecondary,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Image(
                image: NetworkImage(
                    'https://teknokrat.ac.id/wp-content/uploads/2023/04/Web-header-UTI-23.jpg')),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Daftar Peminjaman Barang",
            style: GoogleFonts.lobster(
              color: Asset.colorSecondary,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 25, bottom: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton('User', Icons.people, 0),
                    IconButton('loan_brg', Icons.mail, 0),
                    IconButton('save_brg', Icons.folder, 0),
                    IconButton('list_user', Icons.person_add_alt_1, 0),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton('return_brg', Icons.account_balance_wallet, 0),
                    IconButton('list_brg', Icons.edit_road_outlined, 0),
                    IconButton('Logout', Icons.logout_outlined, 99),
                    IconButton('Lainnya', Icons.important_devices_outlined, 0),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              'Slider',
              style: TextStyle(
                  color: Asset.colorSecondary,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            alignment: Alignment.topLeft,
          ),
          SizedBox(
            height: 140,
            child: ListView(
              children: [
                CarouselSlider(
                  items: [
                    SlideItem(
                        'https://teknokrat.ac.id/wp-content/uploads/2023/04/Sekar-Kinasih-040423-1.jpg'),
                    SlideItem(
                        'https://teknokrat.ac.id/wp-content/uploads/2023/01/WhatsApp-Image-2023-01-04-at-18.00.09.jpeg'),
                    SlideItem(
                        'https://teknokrat.ac.id/wp-content/uploads/2023/04/Tim-Tari-Teknokrat-120323.jpeg'),
                    SlideItem(
                        'https://teknokrat.ac.id/wp-content/uploads/2023/04/ddaa.png'),
                  ],
                  options: CarouselOptions(
                    height: 140.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                width: 170,
                height: 190,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/images/biji.png",
                          height: 80,
                        ),
                      ),
                      Text(
                        "Ngopi Dulu",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Taste Our Hot Burger",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 16,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (index) {},
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$10",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                          Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    favorite = !favorite;
                                  });
                                },
                                child: Center(
                                  child: favorite == false
                                      ? Icon(
                                          Icons.favorite,
                                          color: Colors.grey,
                                          size: 28,
                                        )
                                      : Icon(Icons.favorite,
                                          color:
                                              Color.fromARGB(255, 231, 26, 12)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              // SizedBox(
              //   width: 50,
              // ),
              Row(children: [
                Container(
                    margin: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                    width: 170,
                    height: 190,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                "assets/images/biji.png",
                                height: 80,
                              ),
                            ),
                            Text(
                              "Jangan Panik",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Taste Our Hot Burger",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 16,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (index) {},
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$10",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                                Stack(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          favorite = !favorite;
                                        });
                                      },
                                      child: Center(
                                        child: favorite == false
                                            ? Icon(
                                                Icons.favorite,
                                                color: Colors.grey,
                                                size: 28,
                                              )
                                            : Icon(Icons.favorite,
                                                color: Color.fromARGB(
                                                    255, 231, 26, 12)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ))),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}

//class untuk slidder
class SlideItem extends StatelessWidget {
  final String img;

  SlideItem(this.img);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300)),
      child: Image(
          image: NetworkImage(
            img,
          ),
          fit: BoxFit.cover),
    );
  }
}

//class untuk icon button
class IconButton extends StatelessWidget {
  final String nameLabel;
  final IconData iconLabel;
  final int index;

  IconButton(this.nameLabel, this.iconLabel, this.index);

  List<Map> _fragment = [
    // {'title': 'Daftar User', 'view': ListUser()},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // margin: EdgeInsets.only(bottom: 5),
            child: Material(
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                onTap: () {
                  if (index == 99) {
                    EventPref.clear();
                    Get.off(Login());
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => _fragment[index]['view']),
                    );
                  }
                },
                child: Container(
                  // margin: EdgeInsets.all(5),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Asset.colorSecondary,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        Icon(
                          iconLabel,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              nameLabel,
              style: TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}

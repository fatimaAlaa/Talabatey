import 'package:flutter/material.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.search_sharp, color: Colors.black),
        titleSpacing: 140,
        title: Row(
          children: [
            Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black),
            Text(
              "البياع حي صدام",
              style: TextStyle(
                  color: Colors.black, fontSize: 15, fontFamily: 'Cairo'),
            ),
          ],
        ),
        toolbarHeight: 40,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: 130,
              padding: EdgeInsets.only(right: 10, left: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      appbarBottomItems(
                          Color(0xfff4313f),
                          "images/Photos/resturant-removebg-preview.png",
                          "المطاعم"),
                      appbarBottomItems(
                          Color(0xff86e3ce),
                          "images/Photos/sweets-removebg-preview.png",
                          "حلويات ومعجنات"),
                      appbarBottomItems(Color(0xffe9ebe0),
                          "images/Photos/meat-removebg-preview.png", "اللحوم"),
                      appbarBottomItems(
                          Color(0xffde5a6f),
                          "images/Photos/veg-removebg-preview.png",
                          "الفواكه والخضروات"),
                      appbarBottomItems(Color(0xfff3a493),
                          "images/Photos/fish-removebg-preview.png", "بحرية"),
                      appbarBottomItems(Color(0xffe7615e),
                          "images/Photos/market-removebg-preview.png", "ماركت"),
                      appbarBottomItems(
                          Color(0xff753b3f),
                          "images/Photos/coffee-removebg-preview.png",
                          "القهوة"),
                    ],
                  ),
                ],
              )),
        ),
        actions: [Icon(Icons.notifications_none_sharp, color: Colors.black)],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1000,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 50),
                          child: Text(
                            "المحلات القريبة",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontFamily: 'Cairo1'),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "المحلات الاكثر شيوعا",
                              style: TextStyle(
                                  color: Color(0xfff4313f),
                                  fontSize: 20,
                                  fontFamily: 'Cairo1'),
                            ),
                            Container(
                              width: 200,
                              height: 2,
                              color: Color(0xfff4313f),
                              margin: EdgeInsets.only(top: 10),
                            )
                          ],
                        ),
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.only(top: 20, right: 20, bottom: 20),
                    child: GestureDetector(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 300,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image:
                                        AssetImage("images/Photos/pizza.jpeg"),
                                    fit: BoxFit.cover)),
                          ),
                          Text(
                            "لحم بعجين الموصلي",
                            style: TextStyle(
                                color: Color(0xfff4313f),
                                fontSize: 20,
                                fontFamily: 'Cairo1'),
                          ),
                        ],
                      ),
                    )),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 5),
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "الكل",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Cairo1'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Icon(
                                    Icons.home_outlined,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "خصومات",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontFamily: 'Cairo1'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Icon(
                                    Icons.percent_rounded,
                                    size: 15,
                                    color: Colors.black45,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            width: 120,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "يدعم المحفظة",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontFamily: 'Cairo1'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Icon(
                                    Icons.account_balance_wallet,
                                    size: 15,
                                    color: Colors.black45,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            width: 120,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "توصيل طلباتي",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontFamily: 'Cairo1'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Icon(
                                    Icons.motorcycle_sharp,
                                    size: 15,
                                    color: Colors.black45,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "حصري",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontFamily: 'Cairo1'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Icon(
                                    Icons.star_border,
                                    size: 15,
                                    color: Colors.black45,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(20),
                    child: Restaurant(
                        "images/Photos/burger.jpg", "برجرات", "السيدية")),
                Padding(
                    padding: EdgeInsets.all(20),
                    child: Restaurant(
                        "images/Photos/rest.jpg", "فايكنك", "حي الحسين")),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CircleBottomNavigationBar(
        circleColor: Colors.purple,
        activeIconColor: Colors.white,
        inactiveIconColor: Color(0xffbebebe),
        barBackgroundColor: Color(0xfff3f3f3),
        barHeight: 50,
        iconYAxisSpace: 30,
        tabs: [
          TabData(icon: Icons.account_circle_outlined, iconSize: 30),
          TabData(icon: Icons.sticky_note_2_outlined, iconSize: 30),
          TabData(icon: Icons.account_balance_wallet_outlined, iconSize: 30),
          TabData(icon: Icons.home_outlined, iconSize: 30),
        ],
        onTabChangedListener: (int position) {},
      ),
    );
  }

  Column appbarBottomItems(Color BackColor, String Img, String ItemName) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
          width: 95,
          height: 95,
          decoration: BoxDecoration(
              color: BackColor, borderRadius: BorderRadius.circular(20)),
          child: Image.asset(Img),
        ),
        Text(
          ItemName,
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'Cairo'),
        )
      ],
    );
  }

  GestureDetector Restaurant(
    String ResImg,
    String ResName,
    String ResLocation,
  ) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(ResImg), fit: BoxFit.cover)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "الحد الادنى للطلب: 5.000 د.ع",
                style: TextStyle(
                    color: Colors.grey, fontSize: 14, fontFamily: 'Cairo1'),
              ),
              Text(
                ResName,
                style: TextStyle(
                    color: Color(0xfff4313f),
                    fontSize: 25,
                    fontFamily: 'Cairo1'),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "سعر التوصيل: 5.000 د.ع",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: 'Cairo1'),
                    ),
                    Icon(
                      Icons.motorcycle_sharp,
                      color: Colors.grey,
                      size: 15,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "جيد جدا",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: 'Cairo1'),
                    ),
                    Icon(
                      Icons.tag_faces_sharp,
                      color: Colors.grey,
                      size: 15,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      ResLocation,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: 'Cairo1'),
                    ),
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.grey,
                      size: 15,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

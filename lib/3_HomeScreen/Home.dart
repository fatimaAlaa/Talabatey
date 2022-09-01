import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:talabatey/4_RestaurantDetails/Details.dart';
import 'package:talabatey/main.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool sizeBool = true;
  List<Color> color = [
    Color(0xfff4313f),
    Color(0xff753b3f),
    Color(0xfff3a493),
    Color(0xffe7615e),
    Color(0xffde5a6f),
    Color(0xffe9ebe0),
    Color(0xff86e3ce),
  ];
  List<String> img = [
    "images/Photos/resturant-removebg-preview.png",
    "images/Photos/coffee-removebg-preview.png",
    "images/Photos/fish-removebg-preview.png",
    "images/Photos/market-removebg-preview.png",
    "images/Photos/veg-removebg-preview.png",
    "images/Photos/meat-removebg-preview.png",
    "images/Photos/sweets-removebg-preview.png",
  ];
  List<String> Name = [
    "المطاعم",
    "القهوة",
    "بحرية",
    "ماركت",
    "الفواكه والخضروات",
    "اللحوم",
    "حلويات ومعجنات",
  ];
  List<String> contanier = [
    "الكل",
    "خصومات",
    "يدعم المحفظة",
    "توصيل طلباتي",
    "حصري",
  ];
  List<IconData> icons = [
    Icons.home,
    Icons.percent_rounded,
    Icons.wallet,
    Icons.delivery_dining,
    Icons.star
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.search_sharp, color: Colors.black),
        centerTitle: true,
        titleSpacing: 60,
        title: Row(
          children: const [
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
          preferredSize: const Size.fromHeight(150),
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: 130,
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: ListView.builder(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: img.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(children: [
                      appbarBottomItems(color.elementAt(index),
                          img.elementAt(index), Name.elementAt(index)),
                    ]);
                  })),
        ),
        actions: const [
          Icon(Icons.notifications_none_sharp, color: Colors.black)
        ],
      ),
      body: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "المحلات القريبة",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontFamily: 'Cairo1'),
                    ),
                    Column(
                      children: [
                        const Text(
                          "المحلات الاكثر شيوعا",
                          style: TextStyle(
                              color: const Color(0xfff4313f),
                              fontSize: 18,
                              fontFamily: 'Cairo1'),
                        ),
                        Container(
                          width: 180,
                          height: 2,
                          color: const Color(0xfff4313f),
                          margin: const EdgeInsets.only(top: 10),
                        )
                      ],
                    ),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(top: 20, right: 20, bottom: 20),
                child: GestureDetector(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 300,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage("images/Photos/pizza.jpeg"),
                                fit: BoxFit.cover)),
                      ),
                      const Text(
                        "لحم بعجين الموصلي",
                        style: TextStyle(
                            color: const Color(0xfff4313f),
                            fontSize: 20,
                            fontFamily: 'Cairo1'),
                      ),
                    ],
                  ),
                )),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: ListView.builder(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: contanier.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 5, right: 5),
                          width: 130,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "${contanier.elementAt(index)}",
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontFamily: 'Cairo1'),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Icon(
                                  icons.elementAt(index),
                                  size: 15,
                                  color: Colors.black45,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Restaurant("images/Photos/burger.jpg", "برجرات", "5.000",
                          "السيدية", "5.000"),
                      Restaurant("images/Photos/rest.jpg", "فايكنك", "5.000",
                          "حي الحسين", "3.000"),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ]),
      bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.2))),
          child: GNav(
              rippleColor: Colors.grey,
              hoverColor: Colors.redAccent,
              tabBorderRadius: 10,
              tabActiveBorder: Border.all(color: Colors.black26, width: 1),
              tabBorder:
                  Border.all(color: Colors.grey.withOpacity(0.2), width: 1),
              //tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 8)],
              curve: Curves.easeOutExpo,
              duration: const Duration(milliseconds: 300),
              gap: 3,
              color: Colors.grey[600],
              activeColor: Colors.red,
              iconSize: 20,
              //tabBackgroundColor: Colors.black.withOpacity(0.1),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              selectedIndex: 3,
              tabs: [
                GButton(
                  icon: Icons.account_circle,
                  /* onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ));
                  },*/
                ),
                const GButton(
                  icon: Icons.playlist_add_check_circle_rounded,
                ),
                const GButton(
                  icon: Icons.wallet,
                ),
                /*GButton(
              icon: Icons.delivery_dining_outlined,
              text: 'Butler',
            ),*/
                GButton(
                  icon: Icons.home,
                  /*onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },*/
                ),
              ])),
    );
  }

  Column appbarBottomItems(Color BackColor, String Img, String ItemName) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
          width: 95,
          height: 95,
          decoration: BoxDecoration(
              color: BackColor, borderRadius: BorderRadius.circular(20)),
          child: Image.asset(Img),
        ),
        Text(
          ItemName,
          style: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'Cairo'),
        )
      ],
    );
  }

  InkWell Restaurant(
    String ResImg,
    String ResName,
    String MinPrice,
    String ResLocation,
    String DeliveryPrice,
  ) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => RestaurantDetails(
                  ResImg: ResImg,
                  ResName: ResName,
                  MinPrice: MinPrice,
                  ResLocation: ResLocation,
                  DeliveryPrice: DeliveryPrice,
                  DeliveryTime: "نصف ساعة الى \n ساعة",
                )));
      },
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            sizeBool = !sizeBool;
          });
        }
      },
      child: AnimatedContainer(
        margin: EdgeInsets.all(10),
        duration: Duration(seconds: 1),
        width: MediaQuery.of(context).size.width,
        height: sizeBool ? 250 : 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(ResImg), fit: BoxFit.cover)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "الحد الادنى للطلب: $MinPrice د.ع",
                  style: TextStyle(
                      color: Colors.grey, fontSize: 12, fontFamily: 'Cairo1'),
                ),
                Text(
                  ResName,
                  style: const TextStyle(
                      color: Color(0xfff4313f),
                      fontSize: 25,
                      fontFamily: 'Cairo1'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "سعر التوصيل: $DeliveryPrice د.ع",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontFamily: 'Cairo1'),
                      ),
                      Icon(
                        Icons.motorcycle_sharp,
                        color: Colors.grey,
                        size: 14,
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "جيد جدا",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontFamily: 'Cairo1'),
                      ),
                      Icon(
                        Icons.tag_faces_sharp,
                        color: Colors.grey,
                        size: 12,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        ResLocation,
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontFamily: 'Cairo1'),
                      ),
                      const Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                        size: 12,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

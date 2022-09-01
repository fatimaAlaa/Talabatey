import 'package:flutter/material.dart';
import 'package:talabatey/5_FoodDetails/Details.dart';

class RestaurantDetails extends StatefulWidget {
  final String ResImg;
  final String ResName;
  final String MinPrice;
  final String ResLocation;
  final String DeliveryPrice;
  final String DeliveryTime;

  const RestaurantDetails(
      {required this.ResImg,
      required this.ResName,
      required this.MinPrice,
      required this.ResLocation,
      required this.DeliveryPrice,
      required this.DeliveryTime});
  @override
  State<RestaurantDetails> createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  bool sizeBool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.ResImg), fit: BoxFit.cover)),
              ),
              Positioned(
                  right: 20,
                  top: 50,
                  child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.arrow_forward,
                          size: 30,
                        ),
                      ))),
              Positioned(
                  top: 130,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5, right: 10),
            child: Text(widget.ResName,
                style: const TextStyle(
                    color: Color(0xfff4313f),
                    fontSize: 25,
                    fontFamily: 'Cairo1')),
          ),
          Padding(
              padding: const EdgeInsets.only(bottom: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: const [
                        Text(
                          "جيد جدا",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Cairo1'),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.tag_faces_sharp,
                              color: Colors.black,
                              size: 16,
                            ))
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "سعر التوصيل: ${widget.DeliveryPrice} \n د.ع",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Cairo1'),
                        textAlign: TextAlign.end,
                      ),
                      const Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.motorcycle_sharp,
                            color: Colors.black,
                            size: 14,
                          ))
                    ],
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(right: 100),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          ":الحد الادنى للطلب \n ${widget.MinPrice} د.ع",
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Cairo1'),
                          textAlign: TextAlign.end,
                        ),
                        const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.circle_outlined,
                              color: Colors.black,
                              size: 14,
                            )),
                      ],
                    )),
                Row(
                  children: [
                    Text(
                      widget.ResLocation,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Cairo1'),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.location_on_outlined,
                          color: Colors.black,
                          size: 14,
                        ))
                  ],
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "وقت التوصيل المتوقع من  ${widget.DeliveryTime}",
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Cairo1'),
                          textAlign: TextAlign.end,
                        ),
                        const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.access_time,
                              color: Colors.black,
                              size: 16,
                            ))
                      ],
                    ),
                  ),
                ],
              )),
          Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              margin: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "...ابحث عن طبق او مادة",
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.black26, fontSize: 14, fontFamily: 'Cairo1'),
              )),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            width: MediaQuery.of(context).size.width,
            height: 40,
            child: ListView(
              reverse: true,
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "المشروبات",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 18,
                            fontFamily: 'Cairo1'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "السندويش",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 18,
                            fontFamily: 'Cairo1'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "المقبلات الحارة",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 18,
                            fontFamily: 'Cairo1'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "المقبلات الباردة",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 18,
                            fontFamily: 'Cairo1'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "البرجر",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontFamily: 'Cairo1'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "الاكثر طلبا",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 18,
                            fontFamily: 'Cairo1'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: 50,
            height: 2,
            color: Colors.red,
            margin: const EdgeInsets.only(
              right: 120,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width - 160,
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: ListView(
              children: [
                Menu("images/Photos/ResDetails.jpg", "كلاسك برجر", 7.000),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 2,
                  color: Colors.grey.withOpacity(0.2),
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                ),
                Menu("images/Photos/bbq.jpg", "باربكيو برجر دجاج", 8.000),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 2,
                  color: Colors.grey.withOpacity(0.2),
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                ),
                Menu("images/Photos/burger1.jpg", "وجبة برجر لحم", 10.000),
              ],
            ),
          )
        ],
      ),
    );
  }

  InkWell Menu(String Img, String FoodName, double price) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FoodDetails(
                  FoodImg: Img,
                  ResName: widget.ResName,
                  DeliveryPrice: widget.DeliveryPrice,
                  ResLocation: widget.ResLocation,
                  MinPrice: widget.MinPrice,
                  DeliveryTime: widget.DeliveryTime,
                  FoodName: FoodName,
                  FoodPrice: price,
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
          duration: const Duration(seconds: 5),
          width: MediaQuery.of(context).size.width,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    " د.ع ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Cairo1'),
                  ),
                  Text(
                    "$price",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Cairo1'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    FoodName,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Cairo1'),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    margin: const EdgeInsets.only(bottom: 10, left: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(Img), fit: BoxFit.cover)),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

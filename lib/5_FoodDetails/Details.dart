import 'package:flutter/material.dart';

class FoodDetails extends StatefulWidget {
  final String FoodImg;
  final String ResName;
  final String MinPrice;
  final String ResLocation;
  final String DeliveryPrice;
  final String DeliveryTime;
  final String FoodName;
  double FoodPrice;

  FoodDetails(
      {required this.FoodImg,
      required this.ResName,
      required this.MinPrice,
      required this.ResLocation,
      required this.DeliveryPrice,
      required this.DeliveryTime,
      required this.FoodName,
      required this.FoodPrice});

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  int count = 1;
  double price = 0;
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
                        image: AssetImage(widget.FoodImg), fit: BoxFit.cover)),
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
                        "سعر التوصيل:  ${widget.DeliveryPrice}\n د.ع",
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
                          "الحد الادنى للطلب: \n ${widget.MinPrice}  د.ع",
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
                          "وقت التوصيل المتوقع من ${widget.DeliveryTime} ",
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
            height: MediaQuery.of(context).size.width - 40,
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: ListView(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Text(
                      widget.FoodName,
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontFamily: 'Cairo1',
                      ),
                      textAlign: TextAlign.end,
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    margin: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 10, right: 10),
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 5,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.keyboard_arrow_up,
                          size: 35,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "اضافات",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                  fontFamily: 'Cairo1'),
                            ),
                            const Text(
                              "اختياري",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontFamily: 'Cairo1'),
                            )
                          ],
                        ),
                      ],
                    )),
                const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Text(
                      "تعليمات خاصه",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Cairo1',
                      ),
                      textAlign: TextAlign.end,
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text(
                      "اذا كانت لديك اي ملاحظات تخص الطلب يرجى كتابتها هنا",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Colors.black26,
                          fontSize: 14,
                          fontFamily: 'Cairo1'),
                    )),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 205,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20, top: 20),
                              padding: const EdgeInsets.only(bottom: 20),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (count > 1) {
                                      price = (widget.FoodPrice * count) -
                                          widget.FoodPrice;
                                      count--;
                                    }
                                  });
                                },
                                child: const Icon(Icons.minimize),
                              )),
                          Container(
                            margin:
                                const EdgeInsets.only(left: 20, right: 20, top: 20),
                            padding: const EdgeInsets.only(bottom: 10, top: 10),
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "$count",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20, top: 20),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    count++;
                                    price = widget.FoodPrice * count;
                                  });
                                },
                                child: const Icon(Icons.add),
                              )),
                        ],
                      ),
                      count == 1
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "د.ع ",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 15,
                                    fontFamily: 'Cairo1',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "${widget.FoodPrice}",
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 15,
                                    fontFamily: 'Cairo1',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "د.ع ",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 15,
                                    fontFamily: 'Cairo1',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "$price",
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 15,
                                    fontFamily: 'Cairo1',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),

                      /*Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin:
                            EdgeInsets.only(left: 20, right: 20, top: 20),
                            padding: EdgeInsets.only(bottom: 10, top: 10),
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "$count",
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      )*/
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        padding: const EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(25),
        ),
        child: const Text(
          "اضافة الى السلة",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Cairo1',
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

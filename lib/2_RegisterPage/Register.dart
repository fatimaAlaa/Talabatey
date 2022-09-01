import 'package:flutter/material.dart';
import 'package:talabatey/3_HomeScreen/Home.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool show = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
      padding: EdgeInsets.only(right: 15, left: 15, top: 30, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Image.asset("images/Photos/Logo_NObg.png",
                width: 150, height: 150),
          ),
          Container(
              margin: EdgeInsets.only(top: 20, bottom: 10),
              padding: EdgeInsets.only(top: 20, bottom: 5),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                cursorColor: Colors.grey.withOpacity(0.5),
                textDirection: TextDirection.rtl,
                style: TextStyle(color: Colors.black54),
                maxLength: 15,
                buildCounter: (
                  BuildContext context, {
                  required int currentLength,
                  required int? maxLength,
                  required bool isFocused,
                }) {
                  return Container(
                      height: 15,
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.topLeft,
                      child: Text(
                        '$currentLength/$maxLength ',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.red,
                            fontFamily: 'Cairo1'),
                        textAlign: TextAlign.center,
                      ));
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(right: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  hintText: "الاسم",
                  hintStyle: TextStyle(
                    color: Colors.grey.withOpacity(0.5),
                    fontFamily: 'Cairo1',
                    fontSize: 14,
                  ),
                  hintTextDirection: TextDirection.rtl,
                ),
              )),
          Container(
              margin: EdgeInsets.only(top: 20, bottom: 30),
              padding: EdgeInsets.only(top: 20, bottom: 5),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                cursorColor: Colors.grey.withOpacity(0.5),
                textDirection: TextDirection.rtl,
                style: TextStyle(color: Colors.black54),
                maxLength: 11,
                buildCounter: (
                  BuildContext context, {
                  required int currentLength,
                  required int? maxLength,
                  required bool isFocused,
                }) {
                  return Container(
                      height: 15,
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.topLeft,
                      child: Text(
                        '$currentLength/$maxLength ',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.red,
                            fontFamily: 'Cairo1'),
                        textAlign: TextAlign.center,
                      ));
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(right: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  hintText: "رقم الهاتف",
                  hintStyle: TextStyle(
                    color: Colors.grey.withOpacity(0.5),
                    fontFamily: 'Cairo1',
                    fontSize: 13,
                  ),
                  hintTextDirection: TextDirection.rtl,
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    show = !show;
                  });
                },
                child: show
                    ? Row(children: [
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.red,
                        ),
                        Text("اضغط هنا ,",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                                fontFamily: 'Cairo1')),
                      ])
                    : Row(children: [
                        Icon(
                          Icons.arrow_left_outlined,
                          color: Colors.red,
                        ),
                        Text("اضغط هنا ,",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                                fontFamily: 'Cairo1')),
                      ]),
              ),
              Text("اذا كان لديك رمز مشاركة ",
                  style: TextStyle(
                      fontSize: 16, color: Colors.red, fontFamily: 'Cairo1')),
            ],
          ),
          Visibility(
            visible: show,
            child: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                padding: EdgeInsets.only(top: 10, bottom: 10),
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  cursorColor: Colors.grey.withOpacity(0.5),
                  textDirection: TextDirection.rtl,
                  style: TextStyle(color: Colors.black54),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(right: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    hintText: "رمز المشاركة",
                    hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                      fontFamily: 'Cairo1',
                      fontSize: 13,
                    ),
                    hintTextDirection: TextDirection.rtl,
                  ),
                )),
          ),
          Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xfff7323e),
                  borderRadius: BorderRadius.circular(25)),
              child: Text(
                "التالي",
                style: TextStyle(
                    fontSize: 14, color: Colors.white, fontFamily: 'Cairo1'),
                textAlign: TextAlign.center,
              )),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HomePage(),
              ));
            },
            child: Text(
              "الدخول بدون تسجيل",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontFamily: 'Cairo1',
                  decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    )));
  }
}

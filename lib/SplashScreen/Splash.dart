import 'package:flutter/material.dart';
import 'package:talabatey/HomeScreen/Home.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Future Delay() async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>  HomePage()));
  }

  @override
  void initState(){
    super.initState();
    Delay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6323e),
      body: Center(
        child: Image.asset("images/photos/TalabateyLogo.png",width: 150,height: 150,),
      ),
    );
  }
}

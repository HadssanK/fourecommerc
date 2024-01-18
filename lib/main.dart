import 'dart:async';

import 'package:ecommerce/homesreen.dart';
import 'package:ecommerce/product.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHome(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 190,
          height: 120,
          child: Center(child: Text("Modassir",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 34,
          ),)),
        ),
      ),
    );
  }
}



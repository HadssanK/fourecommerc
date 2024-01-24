import 'dart:async';

import 'package:ecommerce/homesreen.dart';
import 'package:ecommerce/account.dart';
import 'package:ecommerce/main_navbar.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      home: MainNavbar(),
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
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const MyHome(),));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 120,
      child: Center(child: Lottie.asset("images/lottie.json")),
    );
  }
}

import 'package:ecommerce/category_screen.dart';
import 'package:ecommerce/homesreen.dart';
import 'package:ecommerce/serach_screen.dart';
import 'package:flutter/material.dart';

import 'account.dart';

class MainNavbar extends StatefulWidget {
  const MainNavbar({super.key});

  @override
  State<MainNavbar> createState() => _MainNavbarState();
}

class _MainNavbarState extends State<MainNavbar> {

  int bnbCurrentIndex = 0;

  void pageShifter(index){
    setState(() {
      bnbCurrentIndex = index;
    });
  }

  List myscreens = const [
    MyHome(),
    SearchScreen(),
    CateforyScreen(),
    Account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myscreens[bnbCurrentIndex],
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: bnbCurrentIndex,
        onTap: pageShifter,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),

          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Categories",
            icon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
            label: "My Account",
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
    );
  }
}

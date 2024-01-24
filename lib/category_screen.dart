import 'package:flutter/material.dart';


class CateforyScreen extends StatefulWidget {
  const CateforyScreen({super.key});

  @override
  State<CateforyScreen> createState() => _CateforyScreenState();
}

class _CateforyScreenState extends State<CateforyScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Category Screen"),
      ),
    );
  }
}

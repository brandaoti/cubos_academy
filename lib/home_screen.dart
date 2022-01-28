import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'HomeScreen',
        ),
      ),
      body: home(),
    );
  }
}

Widget home() {
  return Center(
    child: SizedBox(
      height: 300,
      width: 300,
      child: Image.asset('assets/images/home.png'),
    ),
  );
}

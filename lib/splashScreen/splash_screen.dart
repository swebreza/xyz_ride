import 'dart:async';

import 'package:flutter/material.dart';
import 'package:xyz_ride/mainScreen/main_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer() {
    Timer(
      Duration(seconds: 3),
      () async {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (c) => MainScreen()),
        );
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/logo.png"),
          const Text("Uber XYZ Drive app"),
        ],
      )),
    );
  }
}

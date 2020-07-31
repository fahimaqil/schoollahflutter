import 'dart:async';
import 'package:flutter/material.dart';
import 'landing.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LandingPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff47B9BD),
      body: Center(
          child: Image.asset('images/Logo.png', height: 140.0, width: 100.0)),
    );
  }
}

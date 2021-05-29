import 'dart:async';

import 'package:flutter/material.dart';
import 'package:somos_app/style/style.dart';
import 'package:somos_app/widget/backgrounds/BackgroundLinearGradient.dart';
import '../auth/login/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _controller.repeat();
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
        body: Container(
      color: primaryLightLeft,
      child: Container(
        child: Center(
          child: Image.asset(
            'lib/assets/brands/logo.png',
            // fit: BoxFit.cover,
            height: 100, //MediaQuery.of(context).size.height,
            //width: 30, //MediaQuery.of(context).size.width,
          ),
        ),
      ),
    ));
  }
}

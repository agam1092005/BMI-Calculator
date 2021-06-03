import 'dart:async';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

class SplashStartScreen extends StatefulWidget {
  @override
  _SplashStartScreenState createState() => _SplashStartScreenState();
}

class _SplashStartScreenState extends State<SplashStartScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionsBuilder: (context, animation, animationTime, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          pageBuilder: (context, animation, animationTime) {
            return InputPage();
          },
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Image(
            image: AssetImage(
              'images/splash.png',
            ),
          ),
        ),
      ),
    );
  }
}

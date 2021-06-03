import 'dart:ui';
import 'package:bmi_calculator/SplashStartScreen.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_){
    runApp(BMICalculator());
  }
  );
}

class BMICalculator extends StatefulWidget{
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(microseconds: 350000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF000000),
        scaffoldBackgroundColor: Color(0xFF000000),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Color(0xFFc6ff00),
          ),
        ),
      ),
      home: SplashStartScreen(),
    );
  }
}

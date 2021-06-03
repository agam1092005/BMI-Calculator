import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

// ignore: camel_case_types
class bottombutton extends StatelessWidget {
  bottombutton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
              letterSpacing: 12,
              color: Theme.of(context).scaffoldBackgroundColor,
              fontWeight: FontWeight.bold,
              fontSize: 24,
              fontFamily: 'Bungee',
            ),
          ),
        ),
        color: Theme.of(context).primaryColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}

import 'dart:ui';
import 'package:bmi_calculator/Settings_page.dart';
import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/functionality.dart';
import 'package:bmi_calculator/results_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/reusable_icon.dart';
import 'package:bmi_calculator/round_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;
  int age = 20;

  Color maleCardColor = InactiveCardColor;
  Color femaleCardColor = InactiveCardColor;

  void updateColor(Gender selectedgender) {
    if (selectedgender == Gender.male) {
      if (maleCardColor == InactiveCardColor) {
        maleCardColor = ActiveCardColor;
        femaleCardColor = InactiveCardColor;
      } else {
        maleCardColor = InactiveCardColor;
      }
    }
    if (selectedgender == Gender.female) {
      if (femaleCardColor == InactiveCardColor) {
        femaleCardColor = ActiveCardColor;
        maleCardColor = InactiveCardColor;
      } else {
        femaleCardColor = InactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  transitionsBuilder:
                      (context, animation, animationTime, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  pageBuilder: (context, animation, animationTime) {
                    return Settings();
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
            color: Colors.white,
            splashRadius: 15,
            splashColor: Color(0xFF2b2b2b),
            iconSize: 30,
          ),
          title: Center(
            child: Text(
              'BMI CALCULATOR',
              style: TextStyle(
                letterSpacing: 3,
                color: Color(0xFFc6ff00),
                fontWeight: FontWeight.bold,
                fontSize: 22,
                fontFamily: 'Bungee',
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          updateColor(Gender.male);
                        });
                      },
                      color: maleCardColor,
                      cardChild: ReusableIcon(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          updateColor(Gender.female);
                        });
                      },
                      color: femaleCardColor,
                      cardChild: ReusableIcon(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: InactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: numberTextStyle,
                        ),
                        Text(
                          ' cm',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Colors.black,
                        activeTrackColor: Color(0xFFc6ff00),
                        thumbColor: Color(0xFFc6ff00),
                        overlayColor: Color(0x60000000),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 14.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 32.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(
                            () {
                              height = newValue.round();
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: labelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                weight.toString(),
                                style: numberTextStyle,
                              ),
                              Text(
                                ' kg',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(
                                    () {
                                      if (weight == 1) {
                                        weight = 1;
                                      } else {
                                        weight--;
                                      }
                                    },
                                  );
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(
                                    () {
                                      weight++;
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      color: InactiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: labelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                age.toString(),
                                style: numberTextStyle,
                              ),
                              Text(
                                ' yrs',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(
                                    () {
                                      if (age == 1) {
                                        age = 1;
                                      } else {
                                        age--;
                                      }
                                    },
                                  );
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(
                                    () {
                                      age++;
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      color: InactiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            bottombutton(
              buttonTitle: 'CALCULATE',
              onTap: () {
                setState(
                  () {
                    if (maleCardColor == InactiveCardColor &&
                        femaleCardColor == InactiveCardColor) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: Color(0xFF2b2b2b),
                          elevation: 1,
                          buttonPadding: EdgeInsets.symmetric(horizontal: 20),
                          content: Container(
                            height: MediaQuery.of(context).size.height * .2,
                            child: Column(
                              children: [
                                Text(
                                  'ALERT',
                                  style: TextStyle(
                                    color: Color(0xFFc6ff00),
                                    fontSize: 35,
                                    letterSpacing: 2.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Bungee',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'You cannot proceed without selected gender, Kindly select your gender.',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Continue',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFFc6ff00),
                                ),
                              ),
                            ),
                          ],
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                      );
                    } else {
                      Functionality calc =
                          Functionality(height: height, weight: weight);
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionsBuilder:
                              (context, animation, animationTime, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                          pageBuilder: (context, animation, animationTime) {
                            return ResultsPage(
                              bmiResult: calc.calculateBMI(),
                              resultText: calc.getResult(),
                              interpretation: calc.getInterpretation(),
                            );
                          },
                        ),
                      );
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

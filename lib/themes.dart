import 'package:bmi_calculator/theme_provider.dart';
import 'package:flutter/material.dart';

class Themes extends StatefulWidget {
  @override
  _ThemesState createState() => _ThemesState();
}

class _ThemesState extends State<Themes> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'THEMES',
            style: TextStyle(
              letterSpacing: 3,
              fontWeight: FontWeight.bold,
              fontSize: 22,
              fontFamily: 'Bungee',
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width * .4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Icon(
                          Icons.wb_sunny_outlined,
                          size: 60,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width * .4,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          border:
                              Border.all(color: Color(0xFFc6ff00), width: 2),
                        ),
                        child: Icon(
                          Icons.nights_stay_outlined,
                          color: Colors.white,
                          size: 60,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Selected theme - ',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      ChangeTheme(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

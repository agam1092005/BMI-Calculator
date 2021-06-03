import 'package:bmi_calculator/themes.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'SETTINGS',
            style: TextStyle(
              letterSpacing: 3,
              color: Color(0xFFc6ff00),
              fontWeight: FontWeight.bold,
              fontSize: 22,
              fontFamily: 'Bungee',
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10),
          physics: BouncingScrollPhysics(),
          children: [
            Center(
              child: Container(
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'images/settings.png',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
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
                      return Themes();
                    },
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF2b2b2b),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: ListTile(
                  title: Text(
                    'Theme',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF2b2b2b),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: ListTile(
                  title: Text(
                    'About Us',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

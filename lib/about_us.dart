import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'About Us',
            style: TextStyle(
              letterSpacing: 3,
              fontWeight: FontWeight.bold,
              fontSize: 22,
              fontFamily: 'Bungee',
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    height: 200,
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'images/TechUtility.png',
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'BMI CALCULATOR',
                  style: TextStyle(
                    letterSpacing: 3,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    fontFamily: 'Bungee',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Calculate your Body Mass Index (BMI) from BMI Calculator. This provides users with a quick information regarding cholesterol, diabetes, heart attacks, high blood pressure, nutrition, obesity, physical activity, stroke, and tobacco use.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Thank you for downloading our app, Kindly take 2 minute and rate our app on playstore',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector( 
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star_border_sharp, size: 50,),
                    Icon(Icons.star_border_sharp, size: 50,),
                    Icon(Icons.star_border_sharp, size: 50,),
                    Icon(Icons.star_border_sharp, size: 50,),
                    Icon(Icons.star_border_sharp, size: 50,),
                  ],
                ),
              ),
              Flexible(
                child: SizedBox(
                  height: 10000,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'by TechUtility - 2021',
                  style: TextStyle(color: Color(0xFF2b2b2b), fontSize: 12),
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

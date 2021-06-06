import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ThemeProvider.dart';

class Themes extends StatefulWidget {
  @override
  _ThemesState createState() => _ThemesState();
}

class _ThemesState extends State<Themes> with TickerProviderStateMixin {
  // ignore: non_constant_identifier_names
  SelectedTheme() {
    if (Theme.of(context).scaffoldBackgroundColor == Color(0xFF000000)) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Choose your Style...',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Pop or Subtle',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Day or Night',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Selected theme - Dark',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w900),
          ),
        ],
      );
    } else
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Choose your Style...',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Pop or Subtle',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Day or Night',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Selected theme - Light',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
          ),
        ],
      );
  }

  // ignore: non_constant_identifier_names
  ShowSnackbar() {
    if (Theme.of(context).scaffoldBackgroundColor == Color(0xFF000000)) {
      return 'Light';
    } else
      return 'Dark';
  }

  // ignore: non_constant_identifier_names
  ThemeChangerButton() {
    if (Theme.of(context).scaffoldBackgroundColor == Color(0xFF000000)) {
      return GestureDetector(
        onTap: () {
          ThemeProvider themeProvider = Provider.of<ThemeProvider>(
            context,
            listen: false,
          );
          themeProvider.swapTheme();
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 100),
          alignment: Alignment.center,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Icon(
            Icons.wb_sunny_outlined,
            size: 30,
            color: Colors.black,
          ),
        ),
      );
    } else
      return GestureDetector(
        onTap: () {
          ThemeProvider themeProvider = Provider.of<ThemeProvider>(
            context,
            listen: false,
          );
          themeProvider.swapTheme();
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 100),
          alignment: Alignment.center,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Icon(
            Icons.nights_stay_outlined,
            size: 30,
            color: Colors.white,
          ),
        ),
      );
  }

  // ignore: non_constant_identifier_names
  ThemeImage() {
    if (Theme.of(context).scaffoldBackgroundColor == Color(0xFF000000)) {
      return Icon(
        Icons.nights_stay_outlined,
        size: 140,
        color: Colors.white,
      );
    } else
      return Icon(
        Icons.wb_sunny_outlined,
        size: 140,
        color: Colors.black,
      );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
              setState(() {});
            },
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          title: Text(
            'THEMES',
            style: TextStyle(
              letterSpacing: 3,
              color: Theme.of(context).scaffoldBackgroundColor,
              fontWeight: FontWeight.bold,
              fontSize: 22,
              fontFamily: 'Bungee',
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 20,
            ),
            ThemeImage(),
            SizedBox(
              height: 60,
            ),
            SelectedTheme(),
            SizedBox(
              height: 60,
            ),
            ThemeChangerButton(),
          ],
        ),
      ),
    );
  }
}

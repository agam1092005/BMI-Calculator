import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFF000000),
    primaryColor: Color(0xFFc6ff00),
    splashColor: Colors.grey,
    buttonColor: Color(0xFF2b2b2b),
    iconTheme: IconThemeData(color: Colors.white),
  );
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFFFFFFFF),
    primaryColor: Color(0xFFe91e63),
    splashColor: Colors.grey,
    buttonColor: Color(0xFFaaaaaa),
    iconTheme: IconThemeData(color: Colors.black),
  );
}

class ChangeTheme extends StatefulWidget {
  @override
  _ChangeThemeState createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Switch.adaptive(
      value: themeProvider.isDarkMode,
      onChanged: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
    );
  }
}

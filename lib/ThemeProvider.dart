import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _selectedTheme;

  ThemeData dark = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Color(0xFF000000),
    primaryColor: Color(0xFFc6ff00),
    splashColor: Color(0xFF2b2b2b),
    buttonColor: Color(0xFF121212),
    iconTheme: IconThemeData(color: Colors.white),
  );

  ThemeData light = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Color(0xFFFFFFFF),
    primaryColor: Color(0xFFe91e63),
    splashColor: Color(0xFFaaaaaa),
    buttonColor: Color(0xFF757575),
    iconTheme: IconThemeData(color: Colors.black),
  );

  ThemeProvider({bool isDarkMode}) {
    _selectedTheme = isDarkMode ? dark : light;
  }

  Future<void> swapTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (_selectedTheme == dark) {
      _selectedTheme = light;
      prefs.setBool('isDarkTheme', false);
    } else {
      _selectedTheme = dark;
      prefs.setBool('isDarkTheme', true);
    }
    notifyListeners();
  }

  ThemeData get getTheme => _selectedTheme;
}

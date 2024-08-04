import 'package:flutter/material.dart';
import 'package:twitter_clone/themes/dark_mode.dart';
import 'package:twitter_clone/themes/light_mode.dart';

/*

  THEME PROVIDER 

  This will let the user to change the theme of an app between lightmode and dark mode

*/

class ThemeProvider with ChangeNotifier {
  // initially
  ThemeData _themeData = lightMode;

  // to get the urrent theme
  ThemeData get themeData => _themeData;

  // checking is it is dark mode or not
  bool get isDarkMode => _themeData == darkMode;

  // set the theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;

    // update UI
    notifyListeners();
  }

  // toggle between two modes
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}

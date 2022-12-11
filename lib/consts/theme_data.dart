import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
        scaffoldBackgroundColor: isDarkTheme ? Colors.black54 : Colors.white,
        primarySwatch: Colors.blue,
        colorScheme:
            isDarkTheme ? const ColorScheme.dark() : const ColorScheme.light());
  }
}

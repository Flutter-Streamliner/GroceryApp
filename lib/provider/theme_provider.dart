import 'package:flutter/material.dart';
import 'package:grocery_app/services/theme_service.dart';

class ThemeProvider with ChangeNotifier {
  final ThemeService themeService = ThemeService();
  bool _isDartTheme = false;
  bool get getTheme => _isDartTheme;

  set setDartTheme(bool value) {
    _isDartTheme = value;
    themeService.setDarkTheme(value);
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:grocery_app/consts/app_styles.dart';
import 'package:grocery_app/consts/app_texts.dart';
import 'package:grocery_app/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({super.key});

  @override
  State<ThemeSwitcher> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeState = Provider.of<ThemeProvider>(context);
    return SwitchListTile(
      title: const Text(
        AppTexts.userTheme,
        style: AppStyles.userItemTitleStyle,
      ),
      secondary: Icon(
        themeState.getTheme
            ? Icons.dark_mode_outlined
            : Icons.light_mode_outlined,
      ),
      onChanged: (value) {
        setState(() => themeState.setDartTheme = value);
      },
      value: themeState.getTheme,
    );
  }
}

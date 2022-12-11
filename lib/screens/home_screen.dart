import 'package:flutter/material.dart';
import 'package:grocery_app/consts/app_texts.dart';
import 'package:grocery_app/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeState = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: SwitchListTile(
          title: const Text(AppTexts.homeTitle),
          secondary: Icon(
            themeState.getTheme
                ? Icons.dark_mode_outlined
                : Icons.light_mode_outlined,
          ),
          onChanged: (value) => themeState.setDartTheme = value,
          value: themeState.getTheme,
        ),
      ),
    );
  }
}

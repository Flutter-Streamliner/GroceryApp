import 'package:flutter/material.dart';
import 'package:grocery_app/consts/app_texts.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(AppTexts.userTitle),
    );
  }
}

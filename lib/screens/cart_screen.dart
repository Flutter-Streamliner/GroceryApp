import 'package:flutter/material.dart';
import 'package:grocery_app/consts/app_texts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(AppTexts.cartTitle),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:grocery_app/consts/app_styles.dart';
import 'package:grocery_app/consts/app_texts.dart';
import 'package:grocery_app/screens/user/widgets/user_item.dart';
import 'package:iconly/iconly.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const UserItem(
      title: AppTexts.userAddress,
      subtitle: AppTexts.userDetails,
      leading: IconlyLight.profile,
      trailing: IconlyLight.arrow_right_2,
    );
  }
}

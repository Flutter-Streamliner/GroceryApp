import 'package:flutter/material.dart';
import 'package:grocery_app/consts/app_styles.dart';

class UserItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData leading;
  final IconData trailing;

  const UserItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leading,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: AppStyles.userItemTitleStyle,
      ),
      subtitle: Text(subtitle),
      leading: Icon(leading),
      trailing: Icon(trailing),
    );
  }
}

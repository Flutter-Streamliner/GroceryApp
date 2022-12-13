import 'package:flutter/material.dart';
import 'package:grocery_app/consts/app_styles.dart';

class UserItem extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData leading;
  final IconData trailing;
  final Function()? onPressed;

  const UserItem({
    super.key,
    required this.title,
    this.subtitle,
    required this.leading,
    required this.trailing,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: AppStyles.userItemTitleStyle,
      ),
      subtitle: subtitle != null ? Text(subtitle!) : null,
      leading: Icon(leading),
      trailing: Icon(trailing),
      onTap: onPressed,
    );
  }
}

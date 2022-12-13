import 'package:flutter/material.dart';
import 'package:grocery_app/consts/app_styles.dart';
import 'package:grocery_app/consts/app_texts.dart';
import 'package:grocery_app/screens/user/widgets/theme_switcher.dart';
import 'package:grocery_app/screens/user/widgets/user_item.dart';
import 'package:iconly/iconly.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.fromLTRB(16, 20, 0, 0),
            child: Text('User Name', style: AppStyles.userItemTitleStyle),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text('user@gmail.com'),
          ),
          Divider(thickness: 2),
          SizedBox(height: 20),
          UserItem(
            title: AppTexts.userAddress,
            subtitle: AppTexts.userDetails,
            leading: IconlyLight.profile,
            trailing: IconlyLight.arrow_right_2,
          ),
          UserItem(
            title: AppTexts.userOrders,
            leading: IconlyLight.bag,
            trailing: IconlyLight.arrow_right_2,
          ),
          UserItem(
            title: AppTexts.userWishlist,
            leading: IconlyLight.heart,
            trailing: IconlyLight.arrow_right_2,
          ),
          UserItem(
            title: AppTexts.userViewed,
            leading: IconlyLight.show,
            trailing: IconlyLight.arrow_right_2,
          ),
          UserItem(
            title: AppTexts.userForgotPassword,
            leading: IconlyLight.unlock,
            trailing: IconlyLight.arrow_right_2,
          ),
          UserItem(
            title: AppTexts.userLogout,
            leading: IconlyLight.logout,
            trailing: IconlyLight.arrow_right_2,
          ),
          ThemeSwitcher(),
        ],
      ),
    );
  }
}

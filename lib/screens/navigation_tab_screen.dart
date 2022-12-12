import 'package:flutter/material.dart';
import 'package:grocery_app/consts/app_texts.dart';
import 'package:grocery_app/provider/theme_provider.dart';
import 'package:grocery_app/screens/cart_screen.dart';
import 'package:grocery_app/screens/categories_screen.dart';
import 'package:grocery_app/screens/home_screen.dart';
import 'package:grocery_app/screens/user_screen.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

class NavigationTabScreen extends StatefulWidget {
  const NavigationTabScreen({super.key});

  @override
  State<NavigationTabScreen> createState() => _NavigationTabScreenState();
}

class _NavigationTabScreenState extends State<NavigationTabScreen> {
  int _selectedIndex = 0;
  final List<Map<String, dynamic>> _pages = const [
    {
      'page': HomeScreen(),
      'title': AppTexts.homeTitle,
    },
    {
      'page': CategoriesScreen(),
      'title': AppTexts.categoriesTitle,
    },
    {
      'page': CartScreen(),
      'title': AppTexts.cartTitle,
    },
    {
      'page': UserScreen(),
      'title': AppTexts.userTitle,
    },
  ];

  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeState = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: _pages[_selectedIndex]['page'],
      appBar: AppBar(
        title: Text(_pages[_selectedIndex]['title']),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: themeState.getTheme ? Colors.black54 : Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon:
                Icon(_selectedIndex == 0 ? IconlyBold.home : IconlyLight.home),
            label: AppTexts.homeTitle,
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 1
                ? IconlyBold.category
                : IconlyLight.category),
            label: AppTexts.categoriesTitle,
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 2 ? IconlyBold.buy : IconlyLight.buy),
            label: AppTexts.cartTitle,
          ),
          BottomNavigationBarItem(
            icon: Icon(
                _selectedIndex == 3 ? IconlyBold.user_2 : IconlyLight.user),
            label: AppTexts.userTitle,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _selectedPage,
      ),
    );
  }
}

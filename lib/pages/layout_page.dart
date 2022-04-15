import 'package:blogclub/pages/articles_page.dart';
import 'package:blogclub/pages/home_page.dart';
import 'package:blogclub/theme.dart';
import 'package:blogclub/widget/bottom_nav_item.dart';
import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  List screen = [
    const HomePage(),
    const ArticlesPage(),
    const ArticlesPage(),
    const ArticlesPage(),
  ];
  int current = 0;
  final String _iconPath = 'images';

  String tabMenuIcon(String iconName, int number) {
    if (current == number) {
      return '$_iconPath/${iconName}_active.png';
    }
    return '$_iconPath/$iconName.png';
  }

  bool isMenuActive(int number) {
    return current == number;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: screen[current],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 82,
          decoration: BoxDecoration(
            color: whiteColor,
            border: Border(top: BorderSide(color: Colors.grey.shade200,width: 0.1))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BottomNavItem(
                icon: tabMenuIcon('home', 0),
                text: 'Home',
                isActive: isMenuActive(0),
                onTap: () {
                  setState(() {
                    current = 0;
                  });
                },
              ),
              BottomNavItem(
                icon: tabMenuIcon('articles', 1),
                text: 'Articles',
                isActive: isMenuActive(1),
                onTap: () {
                  setState(() {
                    current = 1;
                  });
                },
              ),
              BottomNavItem(
                icon: tabMenuIcon('search', 2),
                text: 'Search',
                isActive: isMenuActive(2),
                onTap: () {
                  setState(() {
                    current = 2;
                  });
                },
              ),
              BottomNavItem(
                icon: tabMenuIcon('menu', 3),
                text: 'Menu',
                isActive: isMenuActive(3),
                onTap: () {
                  setState(() {
                    current = 3;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

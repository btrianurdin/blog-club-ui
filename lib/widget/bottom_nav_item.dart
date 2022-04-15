import 'package:blogclub/theme.dart';
import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  final String icon;
  final String text;
  final bool isActive;
  final VoidCallback onTap;

  const BottomNavItem(
      {Key? key,
      required this.icon,
      required this.text,
      required this.isActive,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon, height: 24),
          const SizedBox(height: 6),
          Text(
            text,
            style: regularTextStyle.copyWith(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: isActive ? blueColor : darkBlueColor,
            ),
          )
        ],
      ),
    );
  }
}

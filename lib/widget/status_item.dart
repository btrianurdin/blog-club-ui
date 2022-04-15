import 'package:blogclub/theme.dart';
import 'package:flutter/material.dart';

class StatusItem extends StatelessWidget {
  final String imgUrl;

  const StatusItem({Key? key, required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff376AED),
              Color(0xff49B0E2),
              Color(0xff9CECFB),
            ]),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: whiteColor,
          ),
          child: Image.asset(imgUrl, height: 54),
        ),
      ),
    );
  }
}

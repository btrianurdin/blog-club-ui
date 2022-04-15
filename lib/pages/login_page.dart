import 'package:blogclub/theme.dart';
import 'package:blogclub/widget/login/login_section.dart';
import 'package:blogclub/widget/signup/signup_section.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String activeSection = 'login';

  void toLoginSection() {
    setState(() {
      activeSection = 'login';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Positioned.fill(
              top: 85,
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'images/logo_small.png',
                  height: 56,
                ),
              ),
            ),
            ListView(
              children: [
                const SizedBox(height: 200),
                Stack(
                  children: [
                    Container(
                      height: 120,
                      padding: const EdgeInsets.only(top: 18),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: blueColor,
                        borderRadius: loginBoxBorder,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                activeSection = 'login';
                              });
                            },
                            child: Text(
                              "LOGIN",
                              style: whiteTextStyle.copyWith(
                                fontSize: 18,
                                color: activeSection == 'login'
                                    ? whiteColor
                                    : whiteColor.withOpacity(0.5),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                activeSection = 'signup';
                              });
                            },
                            child: Text(
                              "SIGN UP",
                              style: whiteTextStyle.copyWith(
                                fontSize: 18,
                                color: activeSection == 'signup'
                                    ? whiteColor
                                    : whiteColor.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 78),
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                        vertical: 32,
                        horizontal: 40,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: loginBoxBorder,
                      ),
                      child: activeSection == 'signup'
                          ? SignUpSection(to: toLoginSection)
                          : const LoginSection(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:blogclub/pages/layout_page.dart';
import 'package:blogclub/theme.dart';
import 'package:blogclub/widget/login/login_form.dart';
import 'package:flutter/material.dart';

class LoginSection extends StatelessWidget {
  const LoginSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome Back",
          style: blackTextStyle.copyWith(
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          "Sign in with your account",
          style: regularTextStyle.copyWith(
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 37),
        const LoginForm(),
        const SizedBox(height: 30),
        SizedBox(
          height: 60,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LayoutPage()),
              );
            },
            child: Text(
              "LOGIN",
              style: whiteTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            style: ElevatedButton.styleFrom(primary: blueColor),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Forgot your password? ",
              style: regularTextStyle.copyWith(fontSize: 14),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Reset here",
                style: regularTextStyle.copyWith(
                  fontSize: 14,
                  color: blueColor,
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 40),
        Center(
          child: Text(
            "OR SIGN IN WITH",
            style: regularTextStyle.copyWith(fontSize: 14),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("images/logo_google.png", height: 36),
              Image.asset("images/logo_facebook.png", height: 36),
              Image.asset("images/logo_twitter.png", height: 36),
            ],
          ),
        )
      ],
    );
  }
}

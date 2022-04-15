import 'package:blogclub/pages/layout_page.dart';
import 'package:blogclub/theme.dart';
import 'package:blogclub/widget/signup/signup_form.dart';
import 'package:flutter/material.dart';

class SignUpSection extends StatelessWidget {
  final Function to;

  const SignUpSection({Key? key, required this.to}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Let's Join",
          style: blackTextStyle.copyWith(
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          "Sign up with your email",
          style: regularTextStyle.copyWith(
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 37),
        const SignUpForm(),
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
              "SIGN UP",
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
              "Do you have an account? ",
              style: regularTextStyle.copyWith(fontSize: 14),
            ),
            GestureDetector(
              onTap: () {
                to();
              },
              child: Text(
                "Login",
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
            "OR SIGN UP WITH",
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

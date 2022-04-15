import 'package:blogclub/theme.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email",
              style: regularTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
            const TextField(
              keyboardType: TextInputType.emailAddress,
            )
          ],
        ),
        const SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Fullname",
              style: regularTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
            const TextField(
              keyboardType: TextInputType.text,
            )
          ],
        ),
        const SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Username",
              style: regularTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
            const TextField(
              keyboardType: TextInputType.text,
            )
          ],
        ),
        const SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Password",
              style: regularTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
            const TextField(
              obscureText: true,
            )
          ],
        ),
      ],
    );
  }
}

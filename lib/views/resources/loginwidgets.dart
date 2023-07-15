import 'package:flutter/material.dart';
import 'package:sand/views/resources/pallete.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(height: 70,
        child: OutlinedButton(
            onPressed: () {},
            child: Text(
              "Log-in",
              style: TextStyle(color: Pallete.blue1),
            ),
            style: OutlinedButton.styleFrom(side: BorderSide(color: Pallete.blue1,width: 5))),
      ),
    );
  }
}

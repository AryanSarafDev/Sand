import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sand/views/resources/pallete.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 70,
        child: OutlinedButton(
            onPressed: () {},
            child: Text(
              "Log-in",
              style: TextStyle(color: Pallete.blue1,fontSize: 25),
            ),
            style: OutlinedButton.styleFrom(
                side: BorderSide(color: Pallete.blue1, width: 5)),),
      ),
    );
  }
}

class GoogleLogin extends StatelessWidget {
  const GoogleLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 70,
        child: OutlinedButton.icon(
          onPressed: () {},
          icon: SizedBox(
              height: 50,
              child: SvgPicture.asset(
                "assets/google.svg",
                colorFilter: ColorFilter.mode(Pallete.blue1, BlendMode.srcIn),
              )),
          style: OutlinedButton.styleFrom(
              side: BorderSide(color: Pallete.blue1, width: 5)),
          label: Text(
            "Sign-in with Google!",
            style: TextStyle(color: Pallete.blue1,fontSize: 20),
          ),
        ),
      ),
    );
  }
}

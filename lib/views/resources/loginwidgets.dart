import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sand/views/resources/pallete.dart';
import 'package:sand/views/screens/registerpage.dart';

class LoginButton extends StatelessWidget {
  final String text;
  var func;
  LoginButton({super.key, required this.text, required this.func});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 70,
        child: OutlinedButton(
          onPressed: func,
          child: Text(
            "$text",
            style: TextStyle(color: Pallete.blue1, fontSize: 25),
          ),
          style: OutlinedButton.styleFrom(
              side: BorderSide(color: Pallete.blue1, width: 5)),
        ),
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
            style: TextStyle(color: Pallete.blue1, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class sendToRegister extends StatelessWidget {
  const sendToRegister({super.key});

  @override
  Widget build(BuildContext context) {
    try {} catch (e, s) {
      print(s);
    }
    return Row(children: [
      Text("Dont have an account? "),
      InkWell(child: Text("Sign-up!"), onTap: () => Get.to(RegisterPage()))
    ]);
  }
}

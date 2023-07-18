import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sand/views/resources/commonwidgets.dart';
import 'package:sand/views/resources/constants.dart';
import 'package:sand/views/resources/loginwidgets.dart';
import 'package:sand/views/resources/pallete.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _email = TextEditingController();
    TextEditingController _pass = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: SizedBox(
                  height: 300,
                  width: 300,
                  child: SvgPicture.asset("assets/login.svg")),
            ),
            GoogleLogin(),
            Center(
                child: Text(
              "or",
              style: TextStyle(color: Pallete.opp, fontSize: 20),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextField(
                  fontSize: 20,
                  fieldWidth: 200,
                  hintText: "Enter e-mail",
                  controller: _email,
                  inputType: TextInputType.emailAddress,
                  backgroundColor: Pallete.blue1),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextField(
                    fontSize: 20,
                    fieldWidth: 200,
                    hintText: "Enter Password",
                    controller: _pass,
                    inputType: TextInputType.visiblePassword,
                    backgroundColor: Pallete.blue1)),
            LoginButton(text: "Log-in!",func: ()=> authController.loginUser(_email.text, _pass.text),),
            Center(child: sendToRegister())
          ],
        ),
      ),
    );
  }
}

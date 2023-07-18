import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sand/views/resources/constants.dart';

import '../resources/commonwidgets.dart';
import '../resources/loginwidgets.dart';
import '../resources/pallete.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _email = TextEditingController();
    TextEditingController _pass = TextEditingController();
    TextEditingController _username = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        'https://i.pinimg.com/564x/f1/39/63/f13963c024d3b1e8fe55d78b0654b985.jpg'),
                  ),
                  Positioned(
                      bottom: -10,
                      right: 1,
                      child: IconButton(
                        icon: Icon(
                          Icons.add_a_photo,
                          color: Pallete.opp,
                          size: 40,
                        ),
                        onPressed: ()=>authController.pickImage() ,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextField(
                  fontSize: 20,
                  fieldWidth: 200,
                  hintText: "Enter Username",
                  controller: _username,
                  inputType: TextInputType.text,
                  backgroundColor: Pallete.blue1),
            ),
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
            LoginButton(
              text: "Register",
              func: ()=> authController.registerUser(
                    _username.text, _email.text, _pass.text, authController.ProfilePhoto)

            ),
          ],
        ),
      ),
    );
  }
}

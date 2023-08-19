import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sand/controllers/auth_controller.dart';
import 'package:sand/views/resources/pallete.dart';
import 'package:sand/views/screens/homepage.dart';
import 'package:sand/views/screens/loginpage.dart';
import 'package:sand/views/screens/registerpage.dart';

import 'controllers/tasks_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp().then((value) {
    print("apple");
    Get.put(AuthController());
    Get.put(TasksController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sand',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Pallete.backgroundColor,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Pallete.opp,
          displayColor: Pallete.opp,
        ),
        useMaterial3: true,

      ),home: LoginPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sand/views/resources/pallete.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title:'Sand',theme: ThemeData.light().copyWith(scaffoldBackgroundColor: Pallete.backgroundColor,useMaterial3: true,)
        ,
    );
  }
}

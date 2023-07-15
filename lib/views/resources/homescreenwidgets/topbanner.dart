import 'package:flutter/material.dart';
import 'package:sand/views/resources/pallete.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            image: DecorationImage(
                image: AssetImage("assets/banner.jpg"), fit: BoxFit.cover)),
      ),
      Positioned.fill(
          child: Center(
              child: Text(
        "Welcome User!",
        style: TextStyle(
            color: Pallete.backgroundColor,
            fontSize: 50,
            fontWeight: FontWeight.w300),
      )))
    ]);
  }
}

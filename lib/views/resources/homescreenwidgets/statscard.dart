import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:sand/views/resources/pallete.dart';

class StatsCard extends StatelessWidget {
  const StatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(


            color: Pallete.lblue2,
            borderRadius: BorderRadius.circular(10)),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 30),
            child: Row(
              children: [
                SizedBox(
                    height: 200,
                    width: 200,
                    child: RiveAnimation.asset("assets/hourglass.riv")),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Pallete.white2,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(children: []),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

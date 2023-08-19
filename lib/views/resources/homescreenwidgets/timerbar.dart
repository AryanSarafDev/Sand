import 'package:flutter/material.dart';

import '../pallete.dart';

class TimerBar extends StatelessWidget {
  const TimerBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(

            color: Pallete.lblue1,
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Pallete.white2,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "25 Mins",
                      style: TextStyle(fontSize: 40),
                    ),
                  )),
              Container(
                  decoration: BoxDecoration(
                      color: Pallete.white2,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "25 Mins",
                      style: TextStyle(fontSize: 40),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

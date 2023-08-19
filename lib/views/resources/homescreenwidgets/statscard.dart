import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:sand/views/resources/homescreenwidgets/topbanner.dart';
import 'package:sand/views/resources/pallete.dart';

class StatsCard extends StatelessWidget {
  const StatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
            color: Pallete.lblue2, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Welcome User!",style: TextStyle(color: Pallete.backgroundColor,fontSize: 50),),
          ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                            height: 200,
                            width: 200,
                            child: RiveAnimation.asset("assets/hourglass.riv")),

                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: BoxDecoration(
                                color: Pallete.white2,
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(children: []),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

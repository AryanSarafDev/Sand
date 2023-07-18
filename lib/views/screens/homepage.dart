import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:sand/views/resources/homescreenwidgets/statscard.dart';
import 'package:sand/views/resources/homescreenwidgets/taskslist.dart';
import 'package:sand/views/resources/homescreenwidgets/timerbar.dart';
import 'package:sand/views/resources/homescreenwidgets/topbanner.dart';
import 'package:sand/views/resources/pallete.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          color: Pallete.opp,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBanner(),
            StatsCard(),
            TimerBar(),
            TasksList(),
          ],
        ),
      ),
    );
  }
}

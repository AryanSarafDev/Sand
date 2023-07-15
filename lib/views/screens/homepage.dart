import 'package:flutter/material.dart';
import 'package:sand/views/resources/pallete.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Pallete.red1,child: Icon(Icons.add,color: Pallete.backgroundColor,),),floatingActionButtonLocation: FloatingActionButtonLocation.endContained,bottomNavigationBar: BottomAppBar(
      color: Pallete.opp,
    ),);
  }
}

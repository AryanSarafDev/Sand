import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../pallete.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 300,
            width: 200,
            decoration: BoxDecoration(


                color: Pallete.brown1,
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(height:190,width:190,child: SvgPicture.asset("assets/study.svg"),)
        ],
      ),
    );
  }
}

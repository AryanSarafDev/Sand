import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sand/controllers/auth_controller.dart';
import 'package:sand/controllers/tasks_controller.dart';

import '../commonwidgets.dart';
import '../constants.dart';
import '../pallete.dart';

class TasksList extends StatefulWidget {
  TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: 300,
              width: 200,
              decoration: BoxDecoration(
                  color: Pallete.brown1,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tasks",
                          style: TextStyle(
                            color: Pallete.opp,
                            fontSize: 25,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              TextEditingController _task =
                                  TextEditingController();
                              showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                        title: const Text('Enter Task!'),
                                        actions: <Widget>[
                                          CustomTextField(
                                              fontSize: 20,
                                              fieldWidth: 300,
                                              hintText: "Enter",
                                              controller: _task,
                                              inputType:
                                                  TextInputType.emailAddress,
                                              backgroundColor: Pallete.blue1),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Center(
                                            child: ElevatedButton(
                                              onPressed: () => taskController
                                                  .uploadTask(_task.text),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(16.0),
                                                child: Text(
                                                  "Submit",
                                                  style: TextStyle(
                                                      color: Pallete
                                                          .backgroundColor),
                                                ),
                                              ),
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateColor
                                                          .resolveWith(
                                                              (states) =>
                                                                  Pallete
                                                                      .blue2)),
                                            ),
                                          )
                                        ],
                                      ));
                            },
                            icon: Icon(Icons.add))
                      ],
                    ),
                    FutureBuilder(
                      future: taskController.TaskList(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          List task = snapshot.data;
                          print(snapshot.data);
                          return Expanded(
                            child: ListView.builder(
                                itemCount: snapshot.data.length,
                                itemBuilder: (context, index) {
                                  print(task.runtimeType);

                                  return Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Pallete.backgroundColor,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Container(decoration: BoxDecoration(color: Pallete.red2,borderRadius: BorderRadius.circular(15)),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "${index + 1}",
                                                    style: TextStyle(fontSize: 12,color: Pallete.backgroundColor),
                                                  ),
                                                ),
                                              ),
                                            ),SingleChildScrollView(scrollDirection: Axis.horizontal,
                                              child: Container(
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "${task.elementAt(index)}.",
                                                    style: TextStyle(fontSize: 18),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          );
                        } else {
                          return Center(child: CircularProgressIndicator());
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 190,
              width: 190,
              child: SvgPicture.asset("assets/study.svg"),
            )
          ],
        ),
      ),
    );
  }
}

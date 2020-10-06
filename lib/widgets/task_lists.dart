import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:stata_manage_project/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Fatih'),
    Task(name: 'Ahmet'),
    Task(name: 'Mehmet'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        textTitle: tasks[index].name,
        isChecked: tasks[index].isDone,
        checkBoxCallBack: (bool checkBoxState) {
          setState(() {
            tasks[index].toggleDone();
          });
        }
      );
    },itemCount: tasks.length,
    );
  }
}

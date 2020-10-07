import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stata_manage_project/models/task_data.dart';
import 'package:stata_manage_project/widgets/task_lists.dart';
import 'screens/TaskScreen.dart';
import 'package:stata_manage_project/models/task_data.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context),
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

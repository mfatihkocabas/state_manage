import 'package:stata_manage_project/widgets/task_lists.dart';
import 'package:stata_manage_project/widgets/task_tile.dart';
import 'package:flutter/material.dart';
import 'add_task_screen.dart';

class TaskScreen extends StatelessWidget {

  Widget buildButtomSheet(BuildContext context) =>  Container();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton:  FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
          onPressed: (){
             showModalBottomSheet(context: context, builder: (BuildContext context) => AddTaskScreen());
          },
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.list, size: 30,color: Colors.lightBlueAccent,),
                ),
                SizedBox(height: 10,),
                Text('Stata_Manage',style: TextStyle(
                  color:Colors.white,
                  fontSize: 40,
                ),
                ),
                Text('12 Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),),

              ],
            ),
          ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),topRight: Radius.circular(20),
                    )
                ),
                child: TasksList(),
              ),
            )],

        ));
  }
}





import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(children: <Widget>[
          Text(
            'data',
            style: TextStyle(fontSize: 30,
            color: Colors.lightBlueAccent),

          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          FlatButton(
            color: Colors.lightBlueAccent,
            onPressed: null, child: Text('Add',style: TextStyle(
            color:Colors.red
          ),),
          ),
        ]),
      ),
    );
  }
}

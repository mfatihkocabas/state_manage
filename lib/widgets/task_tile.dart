import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {


  final bool isChecked ;
  final String textTitle;
  final Function checkboxCallBack;

  TaskTile({this.textTitle, this.isChecked,this.checkboxCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        textTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing:  Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (newValue),

      ),
    );
  }
}

// class TaskCheckBox extends StatelessWidget {
//   final bool checkboxState;
//   final Function toggleCheckboxstate;
//
//   TaskCheckBox({this.checkboxState, this.toggleCheckboxstate});
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }



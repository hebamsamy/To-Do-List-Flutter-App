import 'package:flutter/material.dart';
import 'package:tasks_app/taskModel.dart';

class TaskCard extends StatelessWidget {
  Task task;
  void Function(bool?) handleChange;
  VoidCallback handleLongPress;
  TaskCard(
      {required this.task,
      required this.handleChange,
      required this.handleLongPress});
  //(){} void call back
  //(val){}

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: handleLongPress,
      title: Text(
        task.text,
        style: TextStyle(color: task.isDone ? Colors.green : Colors.red),
      ),
      trailing: Checkbox(value: task.isDone, onChanged: handleChange),
    );
  }
}

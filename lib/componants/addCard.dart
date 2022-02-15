import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks_app/toDoList.dart';

class AddTaskCard extends StatelessWidget {
  String inputTask = "";
  @override
  Widget build(BuildContext context) {
    return Consumer<ToDoList>(
      builder: (context, value, child) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Add new Task",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.lightBlue, fontSize: 40),
          ),
          TextField(
            autofocus: true,
            onChanged: (val) {
              inputTask = val;
            },
          ),
          ElevatedButton(
              onPressed: () {
                value.AddToList(inputTask);
                Navigator.pop(context);
              },
              child: Text("Add"))
        ],
      ),
    );
  }
}

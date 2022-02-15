import 'package:flutter/material.dart';
import 'package:tasks_app/componants/addCard.dart';
import 'package:tasks_app/componants/listCard.dart';
import 'toDoList.dart';
import 'package:provider/provider.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({Key? key}) : super(key: key);

  @override
  _ToDoScreenState createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, right: 50, left: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlue,
                    size: 40,
                  ),
                ),
                Text(
                  "To Do List",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  "${Provider.of<ToDoList>(context).count} tasks",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListCard(),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return AddTaskCard();
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

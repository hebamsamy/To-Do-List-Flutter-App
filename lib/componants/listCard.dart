import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks_app/taskModel.dart';
import 'package:tasks_app/toDoList.dart';
import 'taskCard.dart';

class ListCard extends StatefulWidget {
  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ToDoList>(
      builder: (context, value, child) => Container(
        padding: EdgeInsets.symmetric(horizontal: 35),
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: ListView.builder(
          itemCount: value.count,
          itemBuilder: (context, ind) => TaskCard(
            task: value.list[ind],
            handleChange: (bool? val) {
              value.toggleTask(value.list[ind]);
            },
            handleLongPress: () {
              value.deleteFromList(value.list[ind]);
            },
          ),
        ),
      ),
    );
  }
}

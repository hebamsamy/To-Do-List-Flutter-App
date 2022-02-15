import 'package:flutter/material.dart';
import 'package:tasks_app/taskModel.dart';
import 'taskCard.dart';

class ListCard extends StatefulWidget {
  ToDoList data;
  ListCard({required this.data});
  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: ListView.builder(
            itemCount: widget.data.count,
            itemBuilder: (context, ind) => TaskCard(
                  task: widget.data.list[ind],
                  handleChange: (bool? val) {
                    print("tooggle");
                    setState(() {
                      widget.data.list[ind].toggle();
                    });
                  },
                )));
  }
}

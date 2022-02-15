import 'package:flutter/cupertino.dart';

class Task {
  String text;
  bool isDone = false;
  Task({required this.text});
  void toggle() {
    this.isDone = !this.isDone;
  }
}

class ToDoList {
  List<Task> _tasks = [
    Task(text: "wake up "),
    Task(text: "brush teeth"),
    Task(text: "get dreesed")
  ];
  List<Task> get list {
    return _tasks;
  }

  int get count {
    return _tasks.length;
  }

  void AddToList(String val) {
    _tasks.add(Task(text: val));
  }
}

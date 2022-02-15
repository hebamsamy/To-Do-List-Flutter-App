import 'package:flutter/cupertino.dart';

import 'taskModel.dart';

class ToDoList extends ChangeNotifier {
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
    notifyListeners();
  }

  void toggleTask(Task task) {
    task.toggle();
    notifyListeners();
  }

  void deleteFromList(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}

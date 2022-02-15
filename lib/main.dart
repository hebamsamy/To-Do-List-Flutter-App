import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks_app/toDoList.dart';
import 'package:tasks_app/toDoScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ToDoList(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ToDoScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

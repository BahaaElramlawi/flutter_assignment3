import 'package:flutter/material.dart';
import 'package:flutter_assignment3/todo_app/pages/todo_home_page.dart';
import 'package:flutter_assignment3/todo_app/provider/todo_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<TodoProvider>(
        create: (context) {
          return TodoProvider();
        },
        child:
            MaterialApp(theme: ThemeData.light(), home: const TodoHomePage())),
  );
}

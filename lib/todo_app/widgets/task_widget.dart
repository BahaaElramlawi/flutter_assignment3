import 'package:flutter/material.dart';
import 'package:flutter_assignment3/todo_app/models/task_model.dart';
import 'package:flutter_assignment3/todo_app/provider/todo_provider.dart';
import 'package:provider/provider.dart';

class TaskWidget extends StatelessWidget {
  Task task;

  TaskWidget(this.task, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CheckboxListTile(
      secondary: IconButton(
          onPressed: () {
            Provider.of<TodoProvider>(context, listen: false).deleteTask(task);
          },
          icon: const Icon(Icons.delete)),
      value: task.isComplete,
      onChanged: (v) {
        Provider.of<TodoProvider>(context, listen: false).updateTask(task);
      },
      title: Text(task.title),
    );
  }
}

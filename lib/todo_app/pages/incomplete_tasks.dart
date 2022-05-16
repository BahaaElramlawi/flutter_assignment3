import 'package:flutter/material.dart';
import 'package:flutter_assignment3/todo_app/provider/todo_provider.dart';
import 'package:flutter_assignment3/todo_app/widgets/task_widget.dart';
import 'package:provider/provider.dart';

class InCompleteTasksScreen extends StatelessWidget {
  const InCompleteTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: Provider.of<TodoProvider>(context)
            .allTasks
            .where((element) => !element.isComplete)
            .length,
        itemBuilder: (context, index) {
          return TaskWidget(Provider.of<TodoProvider>(context)
              .allTasks
              .where((element) => !element.isComplete)
              .toList()[index]);
        });
  }
}

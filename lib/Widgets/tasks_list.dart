import 'package:flutter/material.dart';
import 'package:todoey/Widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(task: 'Buy Fruits'),
    Task(task: 'Buy Vegetables'),
    Task(task: 'Complete Course'),
    Task(task: 'Outscource reach'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}

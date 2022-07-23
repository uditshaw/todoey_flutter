import 'package:flutter/material.dart';
import 'package:todoey/Widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  List<Task> tasks;
  TasksList({required this.tasks});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: widget.tasks[index].isDone,
            title: widget.tasks[index].task,
            checkBoxCallBack: (bool? newState) {
              setState(() {
                widget.tasks[index].toggleisDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todoey/Widgets/task_tile.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
            title: Provider.of<TaskData>(context).tasks[index].task,
            checkBoxCallBack: (bool? newState) {
              // setState(() {
              //   Provider.of<TaskData>(context).tasks[index].toggleisDone();
              // });
            });
      },
      itemCount: Provider.of<TaskData>(context).getTaskCount,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todoey/Widgets/task_tile.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // On using the Consumer class above of ListView, we can shorten the Provider.of<TaskData>(context, listen: false) to anyword(TaskData).
      itemBuilder: (context, index) {
        return TaskTile(
          onLongPressCallback: () {
            print('INDEX Found: $index');
            Provider.of<TaskData>(context, listen: false).deleteTask(index);
          },
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          // By default, listen is equal to true.
          title:
              Provider.of<TaskData>(context, listen: false).tasks[index].task,
          checkBoxCallBack: (bool? newState) {
            Provider.of<TaskData>(context, listen: false).updateTask(
                Provider.of<TaskData>(context, listen: false).tasks[index]);
          },
        );
      },
      itemCount: Provider.of<TaskData>(context, listen: true).getTaskCount,
      //  Here listen is kept true because after deleting the items, the size changes.
    );
  }
}

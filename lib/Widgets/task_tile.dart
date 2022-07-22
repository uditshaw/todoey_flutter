import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a title',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        isChecked: isChecked,
        toggleCheckBox: (bool? newState) {
          setState(() {
            isChecked = newState!;
          });
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  TaskCheckBox({required this.isChecked, required this.toggleCheckBox});

  final bool isChecked;
  final void Function(bool?) toggleCheckBox;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: toggleCheckBox,
    );
  }
}

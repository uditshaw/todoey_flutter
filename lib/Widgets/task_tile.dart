import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final void Function(bool?) checkBoxCallBack;
  final void Function() onLongPressCallback;
  TaskTile(
      {required this.isChecked,
      required this.title,
      required this.checkBoxCallBack,
      required this.onLongPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallback,
      title: Text(title,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}
// isChecked,
// toggleCheckBox: (bool? newState) {
// setState(() {
// isChecked = newState!;
// });

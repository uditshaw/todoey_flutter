import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a title'),
      trailing: TaskCheckBox(),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  const TaskCheckBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: false, onChanged: null);
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String newAddedTask = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Add Task',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(color: Colors.lightBlue.shade300, fontSize: 30),
                ),
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  textCapitalization: TextCapitalization.sentences,
                  onChanged: (text) {
                    newAddedTask = text;
                    print(newAddedTask);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    print('New Text to be added: $newAddedTask');
                    Provider.of<TaskData>(context, listen: false)
                        .addTask(newAddedTask);
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(2),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightBlue.shade300),
                  ),
                  child: Text(
                    'ADD',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../Widgets/tasks_list.dart';
import '../models/task.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatefulWidget {
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  Widget buildBottomSheet(BuildContext context) => SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context)
                  .viewInsets
                  .bottom), // For placing the Widget above the keyboard.
          child: AddTaskScreen((newTaskTitle) {
            // Main callback for AddTaskScreen
            print(newTaskTitle);
            setState(() {
              tasks.add(Task(task: newTaskTitle));
            });
            Navigator.pop(
                context); // For poping out of the AddTask Screen on pressing the ADD button
          }),
        ),
      );

  List<Task> tasks = [
    Task(task: 'Buy Fruits'),
    Task(task: 'Buy Vegetables'),
    Task(task: 'Complete Course'),
    Task(task: 'Outscource reach'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: buildBottomSheet,
              isScrollControlled: true);
        },
        backgroundColor: Colors.lightBlue.shade300,
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.lightBlue.shade300,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(Icons.list,
                        size: 30, color: Colors.lightBlue.shade300),
                    backgroundColor: Colors.white,
                    radius: 30,
                  ),
                  SizedBox(height: 10),
                  Text('Todoey',
                      style: TextStyle(
                          fontSize: 60,
                          color: Colors.white,
                          fontWeight: FontWeight.w700)),
                  Text('${tasks.length} tasks',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)),
                    color: Colors.white),
                padding:
                    EdgeInsets.only(top: 30, left: 18, right: 18, bottom: 20),
                child: TasksList(tasks: tasks),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

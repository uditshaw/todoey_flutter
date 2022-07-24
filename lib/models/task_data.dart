import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(task: 'Buy Fruits'),
    Task(task: 'Buy Vegetables'),
    Task(task: 'Complete Course'),
    Task(task: 'Outscource reach'),
  ];

  // UnmodifiableListView is a view of the List of any class in which we cannot make any changes to it. It can be accessed but inside it's implementation, it will throw an Exception.

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  // UnmodifiableListView is used so that to view the private member(tasks) and to make changes into it, we can use the below methods.

  int get getTaskCount {
    return _tasks.length;
  }

  void addTask(String newTask) {
    Task newtask = Task(task: newTask);
    _tasks.add(newtask);
    notifyListeners();
  }
}

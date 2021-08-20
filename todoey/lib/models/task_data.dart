import 'package:flutter/cupertino.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Kill Bill'),
  ];

  int get taskCount {
    return _tasks.length;
  }

  String getTaskName(int index) {
    return _tasks[index].name;
  }

  bool getStatus(int index) {
    return _tasks[index].isDone;
  }

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void toggleTask(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}

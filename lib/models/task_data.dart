import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Do workout'),
  ];

  List<Task> get tasks => _tasks;

  int get taskCount => _tasks.length;

  void addNewTask(String title) {
    final task = Task(name: title);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}

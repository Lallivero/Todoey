import 'package:flutter/cupertino.dart';
import 'package:todoey/models/task.dart';
import 'dart:collection';

class DataTasksList extends ChangeNotifier {
  final List<Task> _tasksList = [Task("Finish the app"), Task("Do something nice")];

  void addTask(String taskTitle) {
    _tasksList.add(Task(taskTitle));
    notifyListeners();
  }

  void removeTask(int index) {
    _tasksList.removeAt(index);
    notifyListeners();
  }

  void toggleDone(int index) {
    _tasksList[index].toggleDone();
    notifyListeners();
  }

  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(_tasksList);
  }

  int get taskCount {
    return _tasksList.length;
  }
}

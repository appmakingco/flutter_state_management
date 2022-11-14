import 'package:flutter/material.dart';

class TodoProvider extends ChangeNotifier {
  var tasks = [];

  addTask(title, desc) {
    tasks.add({"title": title, "desc": desc, "isCompleted": false});
    notifyListeners();
  }

  getTaskCount() {
    return tasks.length;
  }

  getCompletedTaskCount() {
    var completedTasks = tasks.where((task) => task["isCompleted"] == true);
    return completedTasks.length;
  }

  markAsComplete(index){
    tasks[index]['isCompleted'] = true;
    notifyListeners();
  }

  markAsInComplete(index){
    tasks[index]['isCompleted'] = false;
    notifyListeners();
  }
}

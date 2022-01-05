import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controllers/todo-controller.dart';
import 'package:state_management/custom-widgets/status-card.dart';
import 'package:state_management/screens/add-task.dart';

class TodoListScreen extends StatelessWidget {
  TodoListScreen({Key? key}) : super(key: key);
  TodoController _todoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),
      ),
      body: Column(
        children: [
          StatusCard(),
          Expanded(
            child: Obx(
              () => ListView.builder(
                  itemCount: _todoController.tasks.length,
                  itemBuilder: (bc, index) {
                    return ListTile(
                      title: Text("${_todoController.tasks[index]['title']}"),
                      subtitle: Text("${_todoController.tasks[index]['desc']}"),
                      trailing: IconButton(
                        icon: _todoController.tasks[index]['isCompleted']
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank),
                        onPressed: () {
                          _todoController.tasks[index]['isCompleted']
                              ? _todoController.markAsInCompleted(index)
                              : _todoController.markAsCompleted(index);
                        },
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Get.to(AddTaskScreen());
        },
      ),
    );
  }
}

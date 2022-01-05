import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controllers/todo-controller.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({Key? key}) : super(key: key);
  final TextEditingController _titleCtrl = TextEditingController();
  final TextEditingController _descCtrl = TextEditingController();
  TodoController _todoCtrl = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Task"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titleCtrl,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Title",
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _descCtrl,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Description",
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                _todoCtrl.addTask(_titleCtrl.text, _descCtrl.text);
              },
              child: const Text("Add Task"),
            )
          ],
        ),
      ),
    );
  }
}

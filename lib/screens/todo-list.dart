import 'package:flutter/material.dart';
import 'package:state_management/custom-widgets/status-card.dart';
import 'package:state_management/screens/add-task.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({Key? key}) : super(key: key);

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
            child: ListView(),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/custom-widgets/status-card.dart';
import 'package:state_management/providers/todo-provider.dart';
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
            child: Consumer<TodoProvider>(
              builder: (context, todo, child) {
                return ListView.builder(
                  itemCount: todo.tasks.length,
                  itemBuilder: (bc, index) {
                    return ListTile(
                      title: Text("${todo.tasks[index]['title']}"),
                      subtitle: Text("${todo.tasks[index]['desc']}"),
                      trailing: IconButton(
                        icon: todo.tasks[index]['isCompleted']
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank_outlined),
                        onPressed: () {
                          todo.tasks[index]['isCompleted']
                              ? todo.markAsInComplete(index)
                              : todo.markAsComplete(index);
                        },
                      ),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddTaskScreen(),
            ),
          );
        },
      ),
    );
  }
}

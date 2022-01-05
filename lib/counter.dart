import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controller/counter-controller.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({Key? key}) : super(key: key);

  CounterController _counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(
          () => Text("${_counterController.counter}"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _counterController.increament();
        },
      ),
    );
  }
}

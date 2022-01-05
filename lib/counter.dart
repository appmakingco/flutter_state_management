import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/providers/counter-provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        // child: Text(Provider.of<CounterProvider>(context).count.toString()),
        child: Consumer<CounterProvider>(
          builder: (context, counter, child) {
            return Text("${counter.count}");
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Provider.of<CounterProvider>(context, listen: false).increment();
        },
      ),
    );
  }
}

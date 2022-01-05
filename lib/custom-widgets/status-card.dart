import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text("Total"),
                const SizedBox(height: 8),
                Text(
                  "0",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text("Completed"),
                const SizedBox(height: 8),
                Text(
                  "0",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

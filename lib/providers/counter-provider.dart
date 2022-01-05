import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  var count = 0;

  increment() {
    count++;
    notifyListeners();
  }
}

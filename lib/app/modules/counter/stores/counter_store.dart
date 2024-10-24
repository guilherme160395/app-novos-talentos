import 'package:flutter/material.dart';

class CounterStore extends ChangeNotifier {
  var counter = 0;
  var isChecked = false;

  void incrementCounter() {
    counter++;
    isChecked = counter.isEven ? true : false;
    notifyListeners();
  }
}

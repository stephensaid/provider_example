import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  String get count {
    return _count.toString();
  }

  void increment() {
    _count++;
    notifyListeners();
  }
}

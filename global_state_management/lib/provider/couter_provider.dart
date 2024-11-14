import 'package:flutter/material.dart';

class CouterProvider extends ChangeNotifier {
  int _count = 0;

  int getCount () => _count;

  void incrementCount() {
    _count++;
    notifyListeners();
  }

  void decrementCount() {
    _count--;
    notifyListeners();

  }
}

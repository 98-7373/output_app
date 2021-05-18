import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  int counter = 0;
  String suzuki = 'suzuki';

  void increment() {
    counter++;
    notifyListeners();
  }

  void countText() {
    suzuki = 'サウナ';
    notifyListeners();
  }
}

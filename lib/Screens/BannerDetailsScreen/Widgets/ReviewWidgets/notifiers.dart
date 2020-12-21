import 'package:flutter/material.dart';

class MultipleNotifier extends ChangeNotifier {
  List<String> _selectItems;
  MultipleNotifier(this._selectItems);
  List<String> get selectedItems => _selectItems;
  bool isHaveItem(String value) => _selectItems.contains(value);

  addItem(String value) {
    if (!isHaveItem(value)) {
      _selectItems.add(value);
      notifyListeners();
    }
  }

  removeItem(String value) {
    if (isHaveItem(value)) {
      _selectItems.remove(value);
      notifyListeners();
    }
  }
}

import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  final List<Map<String, dynamic>> _items = [];

  List<Map<String, dynamic>> get items => _items;

  void addItem(String name, String imagePath, int quantity) {
    _items.add({'name': name, 'imagePath': imagePath, 'quantity': quantity});
    notifyListeners();
  }
}

final Cart cart = Cart();

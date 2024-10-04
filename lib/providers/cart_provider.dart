import 'package:flutter/material.dart';
import 'package:minimalshop/models/product.dart';

class Cart extends ChangeNotifier {
  List<Product> availableProducts = [
    Product(name: 'Product 01', price: 240),
    Product(name: 'Product 02', price: 900),
    Product(name: 'Product 03', price: 649),
    Product(name: 'Product 04', price: 2400),
  ];

  List<Product> _items = [];

  List<Product> get items => _items; // as _items is private

  void add(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void remove(Product product) {
    _items.remove(product);
    notifyListeners();
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }

  int total() {
    return _items.fold(0, (previousValue, item) => previousValue + item.price);
  }
}

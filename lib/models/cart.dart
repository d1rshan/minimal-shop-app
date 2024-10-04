import 'package:flutter/material.dart';
import 'package:minimalshop/models/product.dart';

class Cart extends ChangeNotifier {
  List<Product> availableProducts = [
    Product(name: 'Product 01', price: 240),
    Product(name: 'Product 02', price: 900),
    Product(name: 'Product 03', price: 649),
    Product(name: 'Product 04', price: 2400),
  ];

  List<Product> userCart = [];

  void addToCart(Product product) {
    userCart.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    userCart.remove(product);
    notifyListeners();
  }
}

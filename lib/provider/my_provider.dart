import 'package:flutter/material.dart';
import 'package:foodgo/models/product_model.dart';

class my_provider extends ChangeNotifier {
  List<Product> favoriteList = [];
  List<Product> get favorites => favoriteList;

  void toggleFavorite(Product product) {
    if (favoriteList.contains(product)) {
      favoriteList.remove(product);
    } else {
      favoriteList.add(product);
    }
    notifyListeners();
  }

  bool isFavorite(Product product) {
    return favoriteList.contains(product);
  }
}

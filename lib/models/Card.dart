import 'dart:collection';

import 'package:flutter/cupertino.dart';

//Cart model
class Cart {
  final String id;
  final String title;
  final int number;
  final num price;
  final String imgUri;

  Cart({
    required this.id,
    required this.title,
    required this.number,
    required this.price,
    required this.imgUri,
  });
}

//Cart provider
class CartDataProvider with ChangeNotifier{
  Map<String, Cart> _cartItems = {};

  UnmodifiableMapView <String, Cart> get cartItems =>
      UnmodifiableMapView(_cartItems);

  double get totalAmount {
    var total = 0.0;
    _cartItems.forEach((key, item) { 
      total += item.price * item.number;
    });
    return total;
  }
}
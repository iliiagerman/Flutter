import 'package:flutter/foundation.dart';

class Product {
  final String id;
  final String title;
  final String description;
  final String price;
  final String imgUri;
  final color;

  Product({
      @required this.id,
      @required this.title,
      @required this.description,
      @required this.price,
      @required this.imgUri,
      @required this.color
  });
}

class ProductDataProvider with ChangeNotifier{

  List<Product> _items = [
    Product(
        id: 'p3',
        title: 'Желтый взрыв счастья',
        description: 'Ты получишь настоящее удовольствие, когда попробуешь',
        price: 15.00,
        imgUri: imgUri,
        color: '0xFFFFF59D',
    ),
    Product(
        id: 'p3',
        title: 'Желтый взрыв счастья',
        description: 'Ты получишь настоящее удовольствие, когда попробуешь',
        price: 15.00,
        imgUri: imgUri,
        color: '0xFFFFF59D',
    ),
  ]
}
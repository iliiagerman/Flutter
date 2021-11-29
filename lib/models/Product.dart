import 'dart:collection';

import 'package:flutter/foundation.dart';

class Product {
  final String id;
  final String title;
  final String description;
  final num price;
  final String imgUri;
  final color;

  Product({
      required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.imgUri,
      required this.color
  });
}

class ProductDataProvider with ChangeNotifier{

  List<Product> _items = [
    Product(
        id: 'p3',
        title: 'Желтый взрыв счастья',
        description: 'Ты получишь настоящее удовольствие, когда попробуешь',
        price: 15.00,
        imgUri: 'https://img.povar.ru/main/a3/04/83/94/molochnie_kokteili_v_blendere-430363.jpg',
        color: '0xFFFFF59D',
    ),
    Product(
        id: 'p1',
        title: 'Весенне пробуждение',
        description: 'Ты получишь настоящее удовольствие, когда попробуешь',
        price: 77.99,
        imgUri: 'https://moisovety.com/wp-content/uploads/2016/08/cocktail.jpg',
        color: '0xFFBBDEFB',
    ),
    Product(
        id: 'p2',
        title: 'Летний обалдеоз',
        description: 'Ты получишь настоящее удовольствие, когда попробуешь',
        price: 99.99,
        imgUri: 'https://cdn.lifehacker.ru/wp-content/uploads/2018/09/1024px-Mai_Tai_4_1536318278-e1538737468210-630x315.jpg',
        color: '0xFFF8BBD0',
    ),
    Product(
        id: 'p4',
        title: 'Зеленый обморок',
        description: 'Ты получишь настоящее удовольствие, когда попробуешь',
        price: 35.99,
        imgUri: 'https://i.pinimg.com/originals/25/17/d0/2517d0eb0a5fe4653b43104418d450d8.jpg',
        color: '0xFFCCFF90',
    ),
  ];
   UnmodifiableListView<Product> get items => UnmodifiableListView(_items);

   Product getElementById(String id)
   => _items.singleWhere((value) => value.id == id);
}
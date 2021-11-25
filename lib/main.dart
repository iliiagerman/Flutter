import 'package:flutter/material.dart';
import 'package:flutter_first/my_container.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:flutter_first/my_flexible.dart';
import 'package:flutter_first/pages/home_page.dart';

void main() {
  debugPaintSizeEnabled = false;
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple),
      home: HomePage(),
    );
  }
}


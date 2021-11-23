import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createStage() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Тестирование'),
      ),
      body: Container(
        child: Center(
          child: Text('Здесь что-то будет'),
        ),
      ),
    );
  }
}

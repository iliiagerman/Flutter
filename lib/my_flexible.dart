import 'package:flutter/material.dart';

class MyFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Верстка теория'),
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.red[400],
                width: 50,
                child: const Text(
                  'Dart',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                  softWrap: false,
                  overflow: TextOverflow.fade,
                ),
              ),
              Icon(
                Icons.favorite,
                size: 50,
                color: Colors.red[700],
              ),
              Expanded(
                  child: Image.network(
                      'https://www.pinterest.ru/pin/146859637836505553/')),
            ]),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: <Widget>[
        //     BiggerColorBox(),
        //     Flexible(
        //         fit: FlexFit.tight,
        //         flex: 1,
        //         child: ColorBox()),
        //     Flexible(
        //         fit: FlexFit.tight,
        //         flex: 1,
        //         child: ColorBox()),
        //   ],
        // ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.redAccent[400],
        border: Border.all(),
      ),
    );
  }
}

class BiggerColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.green[500],
        border: Border.all(),
      ),
    );
  }
}

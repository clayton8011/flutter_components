import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Align组件',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Align组件'),
        ),
        body: Container(
          color: Colors.red,
          child: Align(
            alignment: Alignment(1,-1),
            widthFactor: 2.0,
            heightFactor: 2.0,
            child: Container(
              color: Colors.green,
              width: 100,
              height: 50,
              child: Text('bottomCenter',style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}




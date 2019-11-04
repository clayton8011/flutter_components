import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'OverflowBox溢出容器',
        home: new Scaffold(
          appBar: new AppBar(
            title: Text('OverflowBox溢出容器'),
          ),
          //父容器
          body: Container(
            color: Colors.green,
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(6),
            //溢出容器
            child: OverflowBox(
              //对齐方式
              alignment: Alignment.topLeft,
              //限制条件
              maxWidth: 300,
              maxHeight: 500,
              child: Container(
                color: Colors.blueGrey,
                width: 400,
                height: 400,
              ),
            ),
          ),
        )
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'RawMaterialButton组件',
        home:new Scaffold(
          appBar: new AppBar(
            title:  new Text('RawMaterialButton组件'),
          ),
          body: RawMaterialButton(
            onPressed: (){},
            textStyle: TextStyle(fontSize: 28,color: Colors.black),
            //文本
            child: Text('RawMaterialButton组件'),
            //高亮背景
            highlightColor: Colors.red,
            //墨汁
            splashColor: Colors.blue,
            //锯齿
            clipBehavior: Clip.antiAlias,
            padding: EdgeInsets.only(bottom: 5,top: 5,left: 30,right: 30),
            //高亮阴影
            highlightElevation: 10.0,

          ),
        )
    );
  }
}


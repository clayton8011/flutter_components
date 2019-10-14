import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'IconButton组件',
        home: new Scaffold(
            appBar: new AppBar(
              title: Text('IconButton组件'),
            ),
            backgroundColor:Colors.grey ,
            body:Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white70,
                ),
                child: IconButton(
                  //图标
                  icon: Icon(Icons.print),
                  iconSize: 48,
                  alignment: AlignmentDirectional.center,
                  color: Colors.green,
                  padding: EdgeInsets.only(bottom: 5,top: 5,left: 30,right: 30),
                  tooltip: '一个打印图标',
                  //按下点击
                  onPressed: (){},
                ),
              ),
            )
        )
    );
  }
}


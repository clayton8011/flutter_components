import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Rotated旋转容器',
        home: new Scaffold(
          appBar: new AppBar(
            title: Text('Rotated旋转容器'),
          ),
          //父容器
          body: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                    height:20
                ),
                RotatedBox(quarterTurns: 1,//旋转次数 每次转90度
                  child: Text('abck',style: TextStyle(fontSize: 28),),
                ),
                SizedBox(
                    height:20
                ),
                RotatedBox(quarterTurns: 2,
                  child: Text('abck',style: TextStyle(fontSize: 28),),
                ),
                SizedBox(
                    height:20
                ),
                RotatedBox(quarterTurns:3,
                  child: Text('abck',style: TextStyle(fontSize: 28),),
                ),
                SizedBox(
                    height:20
                ),
                RotatedBox(quarterTurns: 4,
                  child: Text('abck',style: TextStyle(fontSize: 28),),
                ),
              ],
            ),
          ),
        )
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomAppBar组件',
      home: Scaffold(
        //Fab按钮
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        //Fat按钮
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){

          },
        ),
        //底部应用栏
        bottomNavigationBar: BottomAppBar(
          //FloatingActionButton和BottomAppBar之间的距离
          notchMargin: 10,
          //背景颜色
          color: Colors.green,
          child: Row(
            //设置大小
            mainAxisSize: MainAxisSize.max,
            //对齐方式
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: Icon(Icons.menu),onPressed: (){},color: Colors.white,),
              IconButton(icon: Icon(Icons.search),onPressed: (){},color: Colors.white,),
            ],
          ),

        ),
      ),
    );
  }
}

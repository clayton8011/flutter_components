import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ConstrainedBox组件',
        home: new Scaffold(
          appBar: new AppBar(
            title:new Text('ConstrainedBox组件'),
          ),
          body:Center(
            child: Column(
              children: <Widget>[
                //添加一个指定大小的盒子，限定其最大最小宽高
                Container(
                  width: 200,
                  height: 60,
                  child: Text('width>maxWidth height=maxheight',style: TextStyle(color: Colors.white),),
                  color: Colors.green,
                ),
                SizedBox(
                  height: 20,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                      minWidth: 100,
                      minHeight: 20,
                      maxHeight:60,
                      maxWidth: 200
                  ),
                  child: Container(
                    width: 250,
                    height: 80,
                    child: Text('width>maxWidth',style: TextStyle(color: Colors.white),),
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                      minWidth: 100,
                      minHeight: 20,
                      maxHeight:60,
                      maxWidth: 200
                  ),
                  child: Container(
                    width: 80,
                    height: 10,
                    child: Text('width<maxWidth',style: TextStyle(color: Colors.white),),
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 100,
                  height: 20,
                  child: Text('width=minWidth height=minheight',style: TextStyle(color: Colors.white),),
                  color: Colors.green,
                ),

              ],
            ),
          ) ,
        )
    );
  }
}


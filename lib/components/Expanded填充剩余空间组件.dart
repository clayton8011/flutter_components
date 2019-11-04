import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Expanded组件',
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text('Expanded组件'),
            ),
            body: Center(
              child: Row(
                children: <Widget>[
                  RaisedButton(
                    onPressed: (){},
                    child: Text('橙色按钮'),
                    color:Colors.orange ,
                  ),
                  //填充剩余所有空间
//                  Expanded(
//                    flex: 1,
//                    child:RaisedButton(
//                      child: Text('绿色按钮'),
//                      color:Colors.green ,
//                      onPressed: (){},
//                    ) ,
//                  ),
                  //可能的大小 一样大。
                  Flexible(
                    flex: 1,
                    child:RaisedButton(
                      child: Text('绿色按钮'),
                      color:Colors.green ,
                      onPressed: (){},
                    ) ,
                  ),
                  RaisedButton(
                    onPressed: (){},
                    child: Text('橙色按钮'),
                    color:Colors.orange ,
                  ),
                ],
              ),
            )
        )
    );
  }
}
//Row Column Flex 有关


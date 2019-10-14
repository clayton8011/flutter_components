import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'OutlineButton组件',
        home: new Scaffold(
            appBar: new AppBar(
              title: Text('OutlineButton组件'),
            ),
            body:Center(
              child: Column(
                children: <Widget>[
                  OutlineButton.icon(
                    onPressed:(){},
                    icon:Icon(Icons.ac_unit,size: 28,color: Colors.green,) ,
                    label: Text('图标按钮',style: TextStyle(color: Colors.green,fontSize: 28),),
                  ),
                  OutlineButton(
                    child: Text('OutlineButton组件',style: TextStyle(fontSize: 28),),
                    onPressed: (){

                    },
                    borderSide: BorderSide(color: Colors.orange,width: 2),
                    //按钮颜色
                    color: Colors.grey,
                    //按钮失效时边框颜色
                    disabledBorderColor: Colors.red,
                    //高亮时的背景色
                    highlightedBorderColor: Colors.black,
                    //失效时文本色
                    disabledTextColor: Colors.grey,
                    //文本颜色
                    textColor: Colors.green,
                    //按钮主题
                    textTheme: ButtonTextTheme.normal,
                    //墨汁飞溅的颜色
                    splashColor: Colors.blue,
                    //抗锯齿
                    clipBehavior: Clip.antiAlias,
                    padding: new EdgeInsets.only(
                        bottom: 5,
                        top: 5,
                        left: 20,
                        right: 20
                    ),
                  )
                ],
              ),
            )
        )
    );
  }
}


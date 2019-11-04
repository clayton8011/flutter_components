import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FlatButton扁平按钮组件',
        home: new Scaffold(
          appBar: new AppBar(
            title: Text('FlatButton扁平按钮组件'),
          ),
          body: Column(
            children: <Widget>[
              FlatButton.icon(
                  onPressed: (){

                  },
                  icon: Icon(Icons.print,size: 36,),
                  label: Text('默认按钮',style: TextStyle(fontSize: 28),)
              ),
              FlatButton(
                //文本
                child: Text('FlatButton按钮测试',style:TextStyle(fontSize: 26,color: Colors.white)),
                //按钮背景颜色
                color: Colors.green,
                //按钮亮度
                colorBrightness: Brightness.dark,
                //失效时的背景颜色
                disabledColor: Colors.grey,
                //失效时文本色
                disabledTextColor: Colors.grey,
                //文本颜色
                textColor: Colors.white,
                //按钮主题buttonTheme ButtonThemeData ButtonTextTheme ThemeData
                textTheme: ButtonTextTheme.normal,
                //墨汁飞溅的颜色
                splashColor: Colors.blue,
                //抗锯齿能力
                clipBehavior: Clip.antiAlias,
                //内边距
                padding: EdgeInsets.only(bottom: 5.0,top: 5.0,left: 20.0,right: 20.0),
                //边框样式
//                shape: Border.all(
//                  width: 2.0,
//                  color: Colors.white,
//                  style: BorderStyle.solid,
//                ),
                shape: RoundedRectangleBorder(
                  side: new BorderSide(
                      width: 2.0,
                      color: Colors.white,
                      style: BorderStyle.solid
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
                onPressed: (){
                  print('按钮按下');
                },
              ),
            ],
          ),
        )
    );
  }
}


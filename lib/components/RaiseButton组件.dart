import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'RaiseButton组件',
        home:new Demo()
    );
  }
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: RaisedButton(
        onPressed: (){},
        //按钮文本
        child: Text('点击登录按钮',style:TextStyle(fontSize: 26) ,),
        //按钮背景颜色
        color: Colors.green,
        //按钮亮度
        colorBrightness: Brightness.dark,
        //失效背景颜色
        disabledColor: Colors.grey,
        //文本颜色
        textColor: Colors.white,
        //失效背景颜色
        disabledTextColor: Colors.grey,
        textTheme: ButtonTextTheme.normal,
        //边框新式
//        shape: Border.all(
//          width: 2.0,
//          color: Colors.white,
//          style: BorderStyle.solid
//        ),
        shape: RoundedRectangleBorder(
            side: new BorderSide(
                width: 2.0,
                color: Colors.white,
                style: BorderStyle.solid
            ),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )
        ),
      ),
    );
  }
}

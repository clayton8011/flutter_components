import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar组件底部提示条',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('SnackBar组件'),
        ),
        body: DemoPage(),
//        ),
        //Fab按钮
      ),
    );
  }
}
class DemoPage extends StatefulWidget{
  @override
  DemoPageState createState() => DemoPageState();

}
class DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: GestureDetector(
        onTap: (){
          final snackBar = new SnackBar(
            //提示信息
            content: Text('这是一个snackBar'),
            backgroundColor: Colors.green,
            //操作
            action: SnackBarAction(label: '取消', onPressed: (){

            },textColor: Colors.white,),
            //持续时间
            duration: Duration(minutes: 1),
          );
          Scaffold.of(context).showSnackBar(snackBar);

        },
        child: Text('显示屏幕底部消息'),
      ),
    );
  }
}
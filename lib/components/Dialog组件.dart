import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Dialog组件',
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text('Dialog组件'),
            ),
            body: DemoPage()));
  }
}

class DemoPage extends StatefulWidget {
  @override
  DemoPageState createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {
  //打开AboutDialog
  void showAboutDialog(BuildContext context) {
    //调用方法
    showDialog(context: context,
        //构造器
        builder: (_)=> new AboutDialog(
          applicationName: 'AndroidStudio',
          applicationIcon: Icon(Icons.apps),
          applicationVersion: 'v3.1.2',
          children: <Widget>[
            Text('这是AndroidStudio')
          ],
        )
    );
  }
  //打开showSimpleDialog
  void showSimpleDialog(BuildContext context) {
    //调用方法
    showDialog<Null>(
        context: context,
        //构造器
        builder: ((BuildContext context)=> new SimpleDialog(
          title: Text('选择'),
          children: <Widget>[
            //SimpleDialog选项
            SimpleDialogOption(
              child: Text('选项1'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
            SimpleDialogOption(
              child: Text('选项2'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            )
          ],
        ))
    );
  }
  //打开AlertDialog 警告 交互
  void showAlertDialog(BuildContext context) {
    //调用方法
    showDialog<void>(
        context: context,
        //构造器
        builder: (BuildContext context)=> new AlertDialog(
          title: Text('标题'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
                Text('较长的list...'),
              ],
            ),
          ),
          //操作按钮
          actions: <Widget>[
            FlatButton(
              child: Text('确定'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('取消'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            )
          ],
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return Center(
//        child: Dialog(
//          child: Container(
//            height: 200,
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
//              children: <Widget>[
//                Text('这是一个Dialog'),
//                RaisedButton(
//                    child: Text('取消'),
//                    onPressed: (){
//                      Navigator.of(context).pop();
//                    }
//                )
//              ],
//            ),
//          ),
//        )
//    );
    return Center(
      child: RaisedButton(
        onPressed: (){
          showAlertDialog(context);
        },
        child: Text('点击打开AlertDialog'),
      ),
    );
  }
}

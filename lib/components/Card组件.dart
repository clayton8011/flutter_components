import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Card组件',
        home:new Scaffold(
            appBar: new AppBar(
              title:  new Text('Card组件'),
            ),
            body: DemoPage()
        )
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  DemoPageState createState() => DemoPageState();
}
class DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Card(
        //背景色
        color: Colors.green,
        //卡片的Z坐标 阴影的大小
        elevation: 10,
        //外边距
        margin: EdgeInsets.all(20),
        //卡片边框样式圆角
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        //卡片具体内容
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('苹果电脑MacBookPro',style: TextStyle(color: Colors.white,fontSize: 32),),
              subtitle: Text('配置为16核8G',style: TextStyle(color: Colors.white,fontSize: 16),),
              contentPadding: EdgeInsets.all(20),
            ),
            ButtonTheme.bar(
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(onPressed: () {print('按钮按下');}, child: Text('购买',style: TextStyle(color: Colors.black,fontSize: 14),)),
                  FlatButton(onPressed: (){}, child: Text('取消',style: TextStyle(color: Colors.black,fontSize: 14),)),
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
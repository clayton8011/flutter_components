import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FittedBox填充容器',
        home: new Scaffold(
          appBar: new AppBar(
            title: Text('FittedBox填充容器'),
          ),
          body: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: FittedBox(
                      /*
                    * fill 全部显示，拉伸充满
                    * contain 原比例不需要充满。
                    * cover 可能拉伸，可能裁剪，充满
                    * fitWidth 可能拉伸，可能裁剪，宽度充满
                    * fitHeight 可能拉伸，可能裁剪，高度充满
                    * none
                    * scaleDown 效果和contain差不多，但此属性不允许显示超过源图片大小，可小不可大
                    * */
                      //填充模式
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                      child: Container(
                        color: Colors.green,
                        child: Text('BoxFit.fill',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  )
                ],
              )
          ),
        )
    );
  }
}

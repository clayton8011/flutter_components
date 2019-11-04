import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'BoxDecoration组件',
        home: new Scaffold(
          appBar: new AppBar(
            title: Text('BoxDecoration组件'),
          ),
          //对容器进行装饰 只能使用container
          body: Center(
            child: Container(
              width: 300,
              height: 300,
              //添加装饰
              child: DecoratedBox(
                //装饰定位 背景模式，foreground前景模式 z-index
                position: DecorationPosition.background,
                decoration: BoxDecoration(
                  //背景色
                  color: Colors.grey,
                  image: DecorationImage(
                    //图片填充方式
                    fit:BoxFit.cover,
                    image: ExactAssetImage('assets/view.jpg'),
                  ),
                  //边框圆角
//                    borderRadius: BorderRadius.circular(150),
                  border:Border.all(color: Colors.red,width: 2),
                  //边框圆角另外一种方法
                  shape: BoxShape.circle,
                ),
                child: Text('定位演示',style: TextStyle(fontSize: 36,color: Colors.green),),
              ),
            ),
          ),
        )
    );
  }
}

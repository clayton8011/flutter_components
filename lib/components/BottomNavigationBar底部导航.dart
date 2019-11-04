import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'BottomNavigationBar组件',
        home: new Scaffold(
          appBar: new AppBar(
            title:new Text('BottomNavigationBar组件'),
          ),
          body:Container(
            width: 200,
            height: 500,
          ) ,
          bottomNavigationBar: DemoPage(),
        )
    );
  }
}
class DemoPage extends StatefulWidget{
  @override
  DemoPageState createState() => DemoPageState();

}
class DemoPageState extends State<DemoPage>  {
  //当前默认选中项索引
  int _currentIndex=0;
  void _onItemTapped(int index){
    setState(() {
      print(index);
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
//    return BottomNavigationBar(
//      //底部按钮类型 固定切换样式
//      type: BottomNavigationBarType.fixed,
//      //按钮大小
//      iconSize: 24.0,
//      //点击按钮回调的函数方法
//      onTap: _onItemTapped,
//      //默认选中
//      currentIndex: _currentIndex,
//        fixedColor: Colors.red,
//      items: <BottomNavigationBarItem>[
//        BottomNavigationBarItem(title: Text('聊天'),icon: Icon(Icons.chat)),
//        BottomNavigationBarItem(title: Text('朋友圈'),icon: Icon(Icons.refresh)),
//        BottomNavigationBarItem(title: Text('我的'),icon: Icon(Icons.person)),
//      ]
//    );
    return BottomNavigationBar(
      //底部按钮类型 固定切换样式 可移位
        type: BottomNavigationBarType.shifting,
        //按钮大小
        iconSize: 24.0,
        //点击按钮回调的函数方法
        onTap: _onItemTapped,
        //默认选中
        currentIndex: _currentIndex,
        fixedColor: Colors.red,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(title: Text('聊天',style: TextStyle(color: Colors.red),),icon: Icon(Icons.chat,color: Colors.red)),
          BottomNavigationBarItem(title: Text('朋友圈',style: TextStyle(color: Colors.red),),icon: Icon(Icons.refresh,color: Colors.red)),
          BottomNavigationBarItem(title: Text('我的',style: TextStyle(color: Colors.red),),icon: Icon(Icons.person,color: Colors.red)),
        ]
    );
  }
}
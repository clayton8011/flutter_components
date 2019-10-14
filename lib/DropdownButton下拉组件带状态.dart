import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button-DropdownButton组件',
      home: new Scaffold(
          appBar: new AppBar(
            title: Text('Button-DropdownButton组件'),
          ),
          body: Center(
            child:DropdownButtonDemo(),
          )
      ),
    );
  }
}
class DropdownButtonDemo extends StatefulWidget {
  @override
  DropdownPageState createState() => DropdownPageState();
}
class DropdownPageState extends State<DropdownButtonDemo> {
  String _selectValue ='上海';
  void _onItemTapped(String index){
    setState(() {
//      print(index);
      _selectValue = index;
    });
  }
  @override
  List<DropdownMenuItem> generateItemList(){
    final List<DropdownMenuItem> items = new List();
    final DropdownMenuItem item1 = new DropdownMenuItem(child: Text('北京'),value: '北京',);
    final DropdownMenuItem item2 = new DropdownMenuItem(child: Text('上海'),value: '上海',);
    final DropdownMenuItem item3 = new DropdownMenuItem(child: Text('广州'),value: '广州',);
    final DropdownMenuItem item4 = new DropdownMenuItem(child: Text('深圳'),value: '深圳',);
    items.add(item1);
    items.add(item2);
    items.add(item3);
    items.add(item4);
    return items;
  }
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      //提示文本
      hint: Text('请选择一个城市'),
      //下拉列表
      items: generateItemList(),
      value:_selectValue ,
      //阴影
      elevation: 2,
      //将下拉框宽度设置成和父容器一样大小
//      isExpanded: true,
      //下拉改变事件
      onChanged: (T){
        //修改选择后的内容在页面显示
        _onItemTapped(T);
      },
      iconSize: 48,
      //下拉文本械
      style: TextStyle(color: Colors.green),
    );
  }
}
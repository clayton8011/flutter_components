import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CheckBoxListTitle组件',
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text('CheckBoxListTitle组件'),
            ),
            body: DemoPage()));
  }
}

class DemoPage extends StatefulWidget {
  @override
  DemoPageState createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {
  bool _value = false;
  //全选全不选切换
  void _valueChanged(bool value) {
    for (var i = 0; i < isChecks.length; i++) {
      isChecks[i] = value;
    }
    setState(() {
      _value=value;
    });
  }
//列表是否选中的值
  List<bool> isChecks = [
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
      Center(
        child: CheckboxListTile(
          value: _value,
          onChanged: _valueChanged,
          selected: true,
          dense: false,
          //文字是否对齐
          isThreeLine: false,
          //文字是否三行显示
          title: Text('整个内容'),
          //leading按钮在文字前面， platform,trailing按钮显示在文字后面
          controlAffinity: ListTileControlAffinity.platform,
          subtitle: Text('勾选下列选项'),
          secondary: Icon(Icons.archive),
          //左侧小图标
          activeColor: Colors.red,
        ),
      ),
      Center(
        child: CheckboxListTile(
          value: isChecks[0],
          onChanged: (bool) {
            setState(() {
              isChecks[0] = bool;
            });
          },
          dense: false,
          //文字是否对齐
          isThreeLine: false,
          //文字是否三行显示
          title: Text('选项1'),
          //leading按钮在文字前面， platform,trailing按钮显示在文字后面
          controlAffinity: ListTileControlAffinity.platform,
//          subtitle: Text('勾选下列选项'),
          //左侧小图标
          activeColor:Colors.red,
        ),
      ),
      Center(
        child: CheckboxListTile(
          value: isChecks[1],
          onChanged: (bool) {
            setState(() {
              isChecks[1] = bool;
            });
          },
          dense: false,
          //文字是否对齐
          isThreeLine: false,
          //文字是否三行显示
          title: Text('选项2'),
          //leading按钮在文字前面， platform,trailing按钮显示在文字后面
          controlAffinity: ListTileControlAffinity.platform,
//          subtitle: Text('勾选下列选项'),
          //左侧小图标
          activeColor:Colors.red,
        ),
      ),
      Center(
        child: CheckboxListTile(
          value: isChecks[2],
          onChanged: (bool) {
            setState(() {
              isChecks[2] = bool;
            });
          },
          //是否默认高亮
          dense: false,
          //文字是否对齐
          isThreeLine: false,
          //文字是否三行显示
          title: Text('选项3'),
          //leading按钮在文字前面， platform,trailing按钮显示在文字后面
          controlAffinity: ListTileControlAffinity.platform,
//          subtitle: Text('勾选下列选项'),
          //左侧小图标
          activeColor: Colors.red,
        ),
      ),
      Center(
        child: CheckboxListTile(
          value: isChecks[3],
          onChanged: (bool) {
            setState(() {
              isChecks[3] = bool;
            });
          },
          //是否默认高亮
          dense: false,
          //文字是否对齐
          isThreeLine: false,
          //文字是否三行显示
          title: Text('选项4'),
          //leading按钮在文字前面， platform,trailing按钮显示在文字后面
          controlAffinity: ListTileControlAffinity.platform,
//          subtitle: Text('勾选下列选项'),
          //左侧小图标
          activeColor: Colors.red,
        ),
      ),
    ]);
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CheckBox组件',
        home:new Scaffold(
            appBar: new AppBar(
              title:  new Text('CheckBox组件'),
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
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Checkbox(
          //是否被选中
          value: 0 == _currentIndex,
          //
          tristate: false,
          onChanged: (bool check){
            if(check){
              setState(() {
                _currentIndex = 0;
              });
            }
          },
          activeColor: Colors.red,
        ),
        Checkbox(
          //是否被选中
          value: 1 == _currentIndex,
          onChanged: (bool check){
            if(check){
              setState(() {
                _currentIndex = 1;
              });
            }

          },
          activeColor: Colors.red,


        ),
      ],
    );
  }
}
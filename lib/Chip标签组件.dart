import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Chip标签组件',
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text('Chip标签组件'),
            ),
            body: DemoPage()));
  }
}

class DemoPage extends StatefulWidget {
  @override
  DemoPageState createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {
  List<String> _tags = ['Android', 'ios', 'windows', 'MacOS', 'Linux'];
  String _action = 'Android';
  List<String> _selected = [];
  String _choice = 'ios';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(spacing: 8, runSpacing: 8,
              children: <Widget>[
                Chip(
                  label: Text('Flutter', style: TextStyle(color: Colors.white),),
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.all(8),
                ),
                Chip(
                  label: Text('Flutter', style: TextStyle(color: Colors.white),),
                  backgroundColor: Colors.grey,
                  padding: EdgeInsets.all(8),
                ),
                Chip(
                  label: Text('Flutter', style: TextStyle(color: Colors.white),),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text('Fr'),
                  ),
                  padding: EdgeInsets.all(2),
                ),
                Chip(
                  label: Text('Flutter', style: TextStyle(color: Colors.white),),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1288597628,783079692&fm=26&gp=0.jpg'),
//                  child: Text('Fr'),
                  ),
                ),
                Chip(
                  label: Text('Android'),
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: '删除这个标签',
                ),
                Divider(color: Colors.grey, height: 36,),
                Wrap(
                    spacing: 8.0,
                    children: _tags.map((tag) {
                      //可删除的chip
                      return Chip(
                        label: Text(tag),
                        onDeleted: () {
                          setState(() {
                            _tags.remove(tag);
                          });
                        },
                      );
                    }).toList()
                ),
                //动作chip
                Divider(color: Colors.grey, height: 36,),
                Wrap(
                    spacing: 8.0,
                    children: _tags.map((tag) {
                      return ActionChip(
                        label: Text(tag),
                        onPressed: () {
                          setState(() {
                            _action = tag;
                            print(_action);
                          });
                        },
                      );
                    }).toList()
                ),
                //过滤chip
                Divider(color: Colors.grey, height: 36,),
                Container(
                  width: 200,
                  child: Text('${_selected}'),
                ),
                Wrap(
                    spacing: 8.0,
                    children: _tags.map((tag) {
                      return FilterChip(
                        label: Text(tag),
                        //当前chip是否选中打勾
                        selected: _selected.contains(tag),
                        //选中回调方法
                        onSelected: (value) {
                          setState(() {
                            if (_selected.contains(tag)) {
                              _selected.remove(tag);
                            } else {
                              _selected.add(tag);
                            }
                          });
//                        print(_selected);
                        },
                      );
                    }).toList()
                ),
//              Text(_selected[0]),
                //choice类型
                Divider(color: Colors.grey, height: 36,),
                Container(
                  width: 200,
                  child: Text('${_choice}'),
                ),
                Wrap(
                    spacing: 8.0,
                    children: _tags.map((tag) {
                      return ChoiceChip(
                        label: Text(tag),
                        //当前chip是否选中打勾
                        selected: _choice == tag,
                        //被选中颜色
                        selectedColor: Colors.black,
                        //选中回调方法
                        onSelected: (value) {
                          setState(() {
                            _choice = tag;
                          });
                        },
                      );
                    }).toList()
                ),
              ],
            ),
          ],
        )
    );
  }
}

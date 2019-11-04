import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SliverAppBar组件',
        home: Scaffold(
          appBar: new AppBar(
            title: new Text('SliverAppBar组件'),
          ),
          body: NestedScrollView(//支持嵌套可滚动的视图
              headerSliverBuilder: (BuildContext context,bool innerBoxIsScrolled){
                return <Widget>[
                  SliverAppBar(
                    //是否预留高度
                    primary: true,
                    //标题前面显示的一个控件
                    leading: Icon(Icons.home),
                    //操作按钮
                    actions: <Widget>[
                      Icon(Icons.add),
                      Icon(Icons.print),
                    ],
                    //设置阴影值
                    elevation: 10,
                    //是否固定在顶部
                    pinned: true,
                    //展开高度
                    expandedHeight: 200,
                    //是否随着滑动隐藏标题
                    floating: false,
                    //与floating结合使用
                    snap: false,
                    //扩展区域
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text('这是一个很酷的标题',style: TextStyle(color: Colors.white,fontSize: 16),),
                      background: Image.network(
                        'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1569811646&di=20eb34b1449cac8e914ef9b2e9234d03&src=http://b.zol-img.com.cn/soft/6/571/cepyVKtIjudo6.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ];
              },
              body: Center(
                child: Text('拖动试试'),

              )
          ),
          //Fab按钮
        )
    );
  }
}

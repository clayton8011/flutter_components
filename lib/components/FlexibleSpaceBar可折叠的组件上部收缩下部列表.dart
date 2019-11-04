import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FlexibleSpaceBar组件',
        home: Scaffold(
          appBar: new AppBar(
            title: new Text('FlexibleSpaceBar组件'),
          ),
          body: NestedScrollView(//支持嵌套可滚动的视图
              headerSliverBuilder: (BuildContext context,bool innerBoxIsScrolled){
                return <Widget>[
                  SliverAppBar(
                    //展开高度
                    expandedHeight: 150,
                    //是否随着滑动隐藏标题
                    floating: false,
                    //是否固定在顶部
                    pinned: true,
                    //可折叠的应用栏
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text('可折叠的组件',style: TextStyle(color: Colors.white,fontSize: 16),),
                      background: Image.network(
                        'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1569811646&di=20eb34b1449cac8e914ef9b2e9234d03&src=http://b.zol-img.com.cn/soft/6/571/cepyVKtIjudo6.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ];
              },
              body: Center(
                child: Text('向上提拉查看效果'),

              )
          ),
          //Fab按钮
        )
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'TabBar组件',
        home: DemoPage()
    );
  }
}
class DemoPage extends StatefulWidget{
  @override
  DemoPageState createState() => DemoPageState();

}
class DemoPageState extends State<DemoPage> with SingleTickerProviderStateMixin {//with多重继承  多了一种动画
  ScrollController _scrollViewController;
  TabController _tabController;
  @override
  void initState(){
    super.initState();
    _scrollViewController= new ScrollController();
    //长度要和展示的TAB数一致
    _tabController = new TabController(length: 6, vsync: this);
  }

  @override
  void dispose(){
    super.initState();
    _scrollViewController.dispose();
    //长度要和展示的TAB数一致
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 500,
      child: Scaffold(
        appBar: AppBar(
          title:Text('我的选项卡') ,
          leading: Icon(Icons.home),//应用栏左侧图标
          //应用栏背景色
          backgroundColor: Colors.green,
          //选项卡
          bottom: TabBar(
              controller: _tabController,
              //是否可以滚动
              isScrollable: true,
              tabs: <Widget> [
                Tab(text: '科技',icon: Icon(Icons.camera),),
                Tab(text: '房产',icon: Icon(Icons.print),),
                Tab(text: '体育',icon: Icon(Icons.favorite),),
                Tab(text: '娱乐',icon: Icon(Icons.share),),
                Tab(text: '电影',icon: Icon(Icons.video_call),),
                Tab(text: '教育',icon: Icon(Icons.airline_seat_flat_angled),),
              ]
          ),
        ),
        //对应的选项卡视图
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Text('科技'),
            Text('房产'),
            Text('体育'),
            Text('娱乐'),
            Text('电影'),
            Text('教育'),
          ],
        ),
      ),
    );
  }
}
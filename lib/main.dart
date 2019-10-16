import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GridTitle网格标题组件',
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text('GridTitle网格标题组件'),
            ),
            body: DemoPage()
        )
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return new DemoPageState();
  }
}
class DemoPageState extends State<DemoPage> {
 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
        height: 600,
        color: Colors.green,
        child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 4,
        padding:EdgeInsets.all(4),
          children: <Widget>[
            GridTile(
              header: Text('Gride Ttitle'),
                child:  Image.asset('assets/cat.jpg'),
              footer: Text('Gride footer'),
            ),
            Image.asset('assets/cat.jpg'),
            GridTile(
              //GridTileBar按钮
              header: GridTileBar(
                //标题
                title: Text('header',style: TextStyle(color: Colors.red),),
                subtitle: Text('subtitle',style: TextStyle(color: Colors.red),),
                //前置图标
                leading: Icon(Icons.print,color: Colors.green,),

              ),
              child:  Image.asset('assets/cat.jpg',fit: BoxFit.cover,),
              footer: GridTileBar(
                //标题
                title: Text('header',style: TextStyle(color: Colors.red),),
                //前置图标
                leading: Icon(Icons.favorite,color: Colors.green,),

              ),
            ),
            Image.asset('assets/cat.jpg'),
            //添加网格效果
            GridPaper(
              color: Colors.red,
              child:  Image.asset('assets/cat.jpg',fit: BoxFit.cover,),
            ),
            Image.asset('assets/cat.jpg'),
            Image.asset('assets/cat.jpg'),
            Image.asset('assets/cat.jpg'),
            Image.asset('assets/cat.jpg'),
          ],
      ),
    );
  }
}
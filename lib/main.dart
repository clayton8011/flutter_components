import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';
import 'dart:convert' as convert;
//导入文件操作库
import 'dart:io';

import 'package:flutter_screenutil/flutter_screenutil.dart';

Dio dio= new Dio();
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
//        home: ListViewDemo(),
        home: MyHomePage(title: '颜值大师',),
      );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
  int _counter = 0;
  bool showBox=false;
  void _hideBox(){
    setState(() {
      showBox=!showBox;
    });
  }
  bool isLoading=false;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  //通过摄像头或图片库选择照片。
  File _image;
  var _faceInfo=null;
  void choosePic(ImageSource source) async {
    var image = await ImagePicker.pickImage(source: source);
    setState(() {
      _image=image;
      //_faceInfo=null;
    });
    print(_image);
    getFaceInfo(_image);
  }
  void getFaceInfo(File img) async{
    setState(() {
      isLoading=true;
    });
    //鉴权
    var url1="https://aip.baidubce.com/oauth/2.0/token?grant_type=client_credentials&client_id=oaCQ9Lgl7uzhYGQrXQSu2OvG&client_secret=BLxkp3NZcyMvE1VqYD7FtmqTYB2zkzNI";
    var back=await dio.get(url1);
    //print('**************************');
    //在flutter 中，如果要获取对象的属性，不要使用。 而使用[]
    var access_token=back.data["access_token"];
    if(access_token ==null){
      setState(() {
        isLoading=false;
      });
      return;
    }


    //print(access_token);

    //转base64
    var bytesList=_image.readAsBytesSync();
    var base64Img= convert.base64Encode(bytesList);

    //调用API 检测颜值
   var url2="https://aip.baidubce.com/rest/2.0/face/v3/detect?access_token="+access_token;
   var imgBack=await dio.post(url2,options: new Options(contentType: ContentType.json),data: {"image":base64Img,"image_type":"BASE64","face_field":"age,beauty,expression,gender,glasses,emotion"});
    //print('-------------------------------------');
    //print(imgBack);
    if(imgBack.data['error_msg'] == 'SUCCESS'){
      setState(() {
        _faceInfo=imgBack.data['result']['face_list'][0];
        isLoading=false;
      });
    }
  }


  @override
  Widget build(BuildContext context){
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    print('设备宽度:${ScreenUtil.pixelRatio}'); //Device width
    print('设备宽度:${ScreenUtil.screenWidth}'); //Device width
    print('设备高度:${ScreenUtil.screenHeight}'); //Device height
    print('我的宽度:${ScreenUtil().setWidth(300)}dp',);
    return Scaffold(
      appBar:renderAppBar() ,
      body: renderAppBody(),
      floatingActionButton:renderFloatingActionButton(),
    );
  }

  Widget renderAppBar(){
    return AppBar(
      title: Text(widget.title),
    );
  }
  Widget _buildColumn() {
    return Offstage(
      offstage: showBox,
      child: Container(
        width: 250,
        height: 250,
        color: Colors.redAccent,
      ),
    );
  }

  Widget renderAppBody(){
    if(_image==null){
//      return Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text('你点击了多少次'),
//            Text('$_counter',style: Theme.of(context).textTheme.display1,),
//            Container(
//              //child: Image.file(_image),
//            )
//          ],
//        ),
//      );
      return Center(
        child: Container(
         // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
          decoration:BoxDecoration(
              color: Color(int.parse('0xff519BFF')),
              borderRadius: BorderRadius.all(Radius.circular(80))
          ),
          width: ScreenUtil().setWidth(580),
//          height: ScreenUtil().setWidth(80),
          child:Offstage(
            offstage: showBox,
            child: Container(
              width: 250,
              height: 250,
              color: Colors.green,
            ),
          ),

          //color: Colors.blue,
        )
      );
    }else{
      //return Image.file(_image,fit: BoxFit.cover,width: double.infinity,height: double.infinity,);
//      return Image.file(_image,fit: BoxFit.cover,width: 200,height: 200,);
//    return
      return renderResult();
    }

  }
  Widget renderResult(){

    return Stack(
      children: <Widget>[
        Image.file(_image,fit: BoxFit.cover,width: double.infinity,height: double.infinity,),
        renderImgBox(),

      ],
    );
  }
  Widget renderFloatingActionButton(){
    return ButtonBar(
      alignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FloatingActionButton(
          onPressed: (){_hideBox();},
          tooltip: 'photo_camera',
          backgroundColor: Colors.blue,
          child: Icon(Icons.photo_camera),
        ),
        FloatingActionButton(
          onPressed: (){choosePic(ImageSource.gallery);},
          tooltip: 'photo_library',
          child: Icon(Icons.photo_library),
        ),
      ],
    );
  }
  Widget renderImgBox(){
    setState(() {
      showBox=true;
    });
    if(_faceInfo==null){
        if(isLoading){
          return Center(child: CircularProgressIndicator(),);
        }
      return Text('');
    }else{
      print('**************************');
      print(_faceInfo);
      return Center(
        child: Container(
          decoration:BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          //color: Colors.white54,
          width: 300,
          height: 200,
          padding: EdgeInsets.all(20.00),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("年龄：${_faceInfo['age']}岁",style: TextStyle(fontSize: 15),),
                  Text("性别："+genderMap[_faceInfo['gender']['type']],style: TextStyle(fontSize: 15),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("颜值：${_faceInfo['beauty']}分",style: TextStyle(fontSize: 15,),),
                  Text("表情："+expressionMap[_faceInfo['expression']['type']] ,style: TextStyle(fontSize: 15,),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("眼镜："+glassesMap[_faceInfo['glasses']['type']],style: TextStyle(fontSize: 15,),),
                 Text("情绪："+emotionMap[_faceInfo['emotion']['type']],style: TextStyle(fontSize: 15,),),
                ],
              ),


            ],
          ),
          //decoration: BoxDecoration(borderRadius: BorderRadius.all(15.0)),
        ) ,
      );
    }

  }


  var  genderMap = {'male':'男','female':'女'};
  var  expressionMap = {'none':'不笑','smile':'微笑','laugh':'大笑'};
  Map glassesMap = {'none':'无眼镜','common':'普通眼镜','sun':'墨镜'};
  Map emotionMap = {'angry':'愤怒 ','disgust':'厌恶 ','fear':'恐惧 ','happy':'高兴 ','sad':'伤心 ','surprise':'惊讶 ','neutral':'无表情 ','pouty':'撅嘴 ','grimace':'鬼脸',};
}


class ListViewDemo extends StatelessWidget {
  Widget horizontalList() {
    return Container(
      height: 100.0,
      margin: EdgeInsets.only(top: 30),
      color: Colors.grey[300],
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if(index==0){
            return Center(
              child: Text('我是第一个。'),
            );
          }else {
            return Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              color: Colors.grey[200],
              width: 120.0,
              child: Center(
                child: Text(
                  '$index',
                  style: Theme
                      .of(context)
                      .textTheme
                      .title,
                ),
              ),
            );
          }
        },
        itemCount: 10,
        shrinkWrap: true, // todo comment this out and check the result
        physics:
        ClampingScrollPhysics(), // todo comment this out and check the result
      ),
    );
  }

  Widget verticalList() {
    return ListView.builder(
      padding: EdgeInsets.only(top: 8.0),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(8.0),
          color: Colors.grey[200],
          width: 120.0,
          height: 120.0,
          child: Center(
            child: Text(
              '$index ddRdd',
              style: Theme.of(context).textTheme.title,
            ),
          ),
        );
      },
      itemCount: 9,
      shrinkWrap: true, // todo comment this out and check the result
      physics:
      ClampingScrollPhysics(), // todo comment this out and check the result
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              horizontalList(),
              verticalList(),
            ]),
          ),
        ],
      ),
    );
  }
}


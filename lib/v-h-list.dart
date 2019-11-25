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
      home: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  Widget horizontalList() {
    return Container(
      height: 100.0,
      color: Colors.grey[300],
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.all(8.0),
            color: Colors.grey[200],
            width: 120.0,
            child: Center(
              child: Text(
                '$index',
                style: Theme.of(context).textTheme.title,
              ),
            ),
          );
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
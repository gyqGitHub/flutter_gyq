import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        itemExtent: 50,
        children: <Widget>[
          Text("文本字体样式"),
          Text('按钮'),
          Text('图片和icon'),
          Text('单选框和复选框'),
          Text('输入框和表单'),
          Text('进度指示器')
        ],
      ),
    );
  }

}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        itemExtent: 50,
        children: <Widget>[
          Text('线性布局'),
          Text('弹性布局'),
          Text('流式布局'),
          Text('层叠布局'),
          Text('对齐和相对定位'),
        ],
      ),
    );
  }

}
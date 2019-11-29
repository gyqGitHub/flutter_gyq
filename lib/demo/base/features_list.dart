import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeaturesList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        itemExtent: 50,
        children: <Widget>[
          Text('导航返回拦截'),
          Text('数据共享'),
          Text('跨组件状态共享'),
          Text('颜色和主题'),
          Text('异步ui更新'),
          Text('对话框'),
        ],
      ),
    );
  }

}
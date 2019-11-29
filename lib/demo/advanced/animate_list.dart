import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimateList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: EdgeInsets.all(20),
        itemExtent: 50,
        children: <Widget>[
          Text('动画结构'),
          Text('自定义路由过渡动画'),
          Text('Hero动画'),
          Text('交织动画'),
          Text('通用切换动画组件'),
          Text('动画过渡组件'),
        ],
      ),
    );
  }
  
}
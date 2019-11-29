import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        itemExtent: 50,
        children: <Widget>[
          Text('填充'),
          Text('尺寸限制类容器'),
          Text('装饰容器'),
          Text('变换'),
          Text('Container容器'),
          Text('Scaffold,TabBar,底部导航'),
          Text('剪裁'),
        ],
      ),
    );
  }

}
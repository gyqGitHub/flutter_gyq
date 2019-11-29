import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        itemExtent: 50,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          Text('SingleChildScrollView'),
          Text('listView'),
          Text('GridView'),
          Text('CustomScrollView'),
          Text('滚动监听及控制'),
        ],
      ),
    );
  }

}
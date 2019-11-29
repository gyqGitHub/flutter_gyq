import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiyList extends StatelessWidget {
  final List<String> tabs = ['组合现有组件', '组合实例', '自绘组件', '自绘实例'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: tabs.length,
          itemExtent: 50,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(tabs[index]),
            );
          }),
    );
  }
}

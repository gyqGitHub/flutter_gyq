import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrincipleList extends StatelessWidget {
  final List<String> items = ['FlutterUI系统', 'element和builderContext', 'RenderObject','Flutter从启动到显示','Flutter图片加载和缓存'];

  final Widget divider1 = Divider(
    color: Colors.red,
    height: 10,
  );
  final Widget divider2 = Divider(
    color: Colors.black,
    height: 10,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
          separatorBuilder: (context, index) {
            return index % 2 == 0 ? divider1 : divider2;
          },
          itemCount: items.length),
    );
  }
}

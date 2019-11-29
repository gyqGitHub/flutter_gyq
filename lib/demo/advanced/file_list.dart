import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FileList extends StatelessWidget {
  final List<String> tabs = ['文件操作', 'http请求', 'webSocket', 'json转dart Model'];
  final Widget divider1 = Divider(
    color: Colors.blue,
  );
  final Widget divider2 = Divider(color: Colors.greenAccent);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(tabs[index]),
            );
          },
          separatorBuilder: (context, index) {
            return index % 2 == 0 ? divider1 : divider2;
          },
          itemCount: tabs.length),
    );
  }
}

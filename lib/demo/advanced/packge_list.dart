import 'package:flutter/material.dart';

class PackageList extends StatelessWidget {
  final List<String> items = [
    '开发flutter插件',
    '实现android插件',
    '实现ios插件',
    'Texttrue和PlatformView'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: items.length,
          itemExtent: 50,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          }),
    );
  }
}

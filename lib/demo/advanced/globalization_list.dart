import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlobalizationList extends StatelessWidget {
  final List<String> items = ['实现Localization', '使用intl包', '国际化常见问题'];

  final Widget divider1 = Divider(
    color: Colors.red,
  );
  final Widget divider2 = Divider(
    color: Colors.black,
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

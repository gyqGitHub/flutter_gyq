import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gyq/demo/base/text_example.dart';

class BaseList extends StatelessWidget {
  final List<String> itemStringList = [
    "文本字体样式",
    "按钮",
    "图片和icon",
    '单选框和复选框',
    '输入框和表单',
    '进度指示器'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: double.infinity,
              minHeight: 50
            ),
            child: FlatButton(
              child: Text(itemStringList[0]),
              onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return TextExample(title:itemStringList[0]);
                  }));
              },
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: double.infinity,
                minHeight: 50
            ),
            child: FlatButton(
              child: Text(itemStringList[1]),
              onPressed: () {},
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: double.infinity,
                minHeight: 50
            ),
            child: FlatButton(
              child: Text(itemStringList[2]),
              onPressed: () {},
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: double.infinity,
                minHeight: 50
            ),
            child: FlatButton(
              child: Text(itemStringList[3]),
              onPressed: () {},
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: double.infinity,
                minHeight: 50
            ),
            child: FlatButton(
              child: Text(itemStringList[4]),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

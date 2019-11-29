import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  final String title;

  const TextExample({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text(
            title * 8,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            title * 4,
            textAlign: TextAlign.center,
            style: TextStyle(height: 2, fontSize: 20),
          ),
          Text(
            title * 2,
            textScaleFactor: 2,
            style: TextStyle(
                color: Colors.blue,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w900,
                height: 1.5),
          ),
          Text.rich(TextSpan(
              style: TextStyle(height: 2, color: Colors.orange),
              children: [
                TextSpan(text: "百度:", style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: "www.baidu.com",
                    style: TextStyle(color: Colors.blue)),
                TextSpan(text: "小尾巴的颜色继承自父widget")
              ]))
        ],
      ),
    );
  }
}

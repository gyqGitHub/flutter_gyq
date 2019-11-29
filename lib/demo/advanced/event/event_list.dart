import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gyq/demo/advanced/event/pointer_event.dart' as prefix0;

class EventList extends StatelessWidget {

  List<String> subTitleList = ["原始指针事件处理",'手势识别','全局事件总线',"通知"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        itemExtent: 50,
        children: <Widget>[
          FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => prefix0.PointerEventPage(title: subTitleList[0],)));
              },
              child: Text(subTitleList[0])),
          FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => prefix0.PointerEventPage(title: subTitleList[1],)));
              },
              child: Text(subTitleList[1])),
          FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => prefix0.PointerEventPage(title: subTitleList[2],)));
              },
              child: Text(subTitleList[2])),
          FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => prefix0.PointerEventPage(title: subTitleList[3],)));
              },
              child: Text(subTitleList[3])),
        ],
      ),
    );
  }
}

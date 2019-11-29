import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PointerEventPage extends StatefulWidget {
  final String title;

  const PointerEventPage({Key key, @required this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PointerEventPageState(title);
  }
}

class PointerEventPageState extends State<PointerEventPage> {
  final String title;
  PointerEvent _pointerEvent;

  PointerEventPageState(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Listener(
//            behavior: HitTestBehavior.deferToChild,
              behavior: HitTestBehavior.opaque,
//              behavior: HitTestBehavior.translucent,
            child: Container(
              height: 100,
              child: Center(
                  child: Text(
                "点击我试试呗",
                style: TextStyle(color: Colors.blue),
              )),
            ),
            onPointerDown: (PointerDownEvent event) =>
                setState(() => _pointerEvent = event),
            onPointerUp: (PointerUpEvent event) =>
                setState(() => _pointerEvent = event),
            onPointerMove: (PointerMoveEvent event) =>
                setState(() => _pointerEvent = event),
          ),
          Container(
            height: 100,
            color: Colors.blue,
            child: Center(
              child: Text(
                _pointerEvent?.toString(minLevel: DiagnosticLevel.info) ?? "",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

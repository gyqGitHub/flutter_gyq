import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget{
  @override
  ExampleState createState() {
    return ExampleState();
  }

}

class ExampleState extends State<ExamplePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('实例篇'),
        centerTitle: true,
      ),
      body: Center(
        child: Icon(Icons.bug_report,size: 110,color: Colors.blue,),
      ),
    );
  }

}
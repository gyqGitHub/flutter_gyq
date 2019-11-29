import 'package:flutter/material.dart';
import 'package:flutter_gyq/demo/advanced/advanced.dart';
import 'package:flutter_gyq/demo/base/base.dart';
import 'package:flutter_gyq/demo/example.dart';

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "gyq 的 flutter",
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _DemoAppState createState() {
    return _DemoAppState();
  }
}

class _DemoAppState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  List<Widget> pages = new List();

  @override
  void initState() {
    super.initState();
    pages..add(BasePage())..add(AdvancedPage())..add(ExamplePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('flutter demo'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          )
        ],
        elevation: 8,
        backgroundColor: Colors.purpleAccent,
      ),*/
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("基础篇")),
          BottomNavigationBarItem(
              icon: Icon(Icons.android), title: Text("进阶篇")),
          BottomNavigationBarItem(
              icon: Icon(Icons.bug_report), title: Text("实例篇")),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTap,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 16,
        unselectedFontSize: 12,
      ),
      body: pages[_selectedIndex],
    );
  }

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

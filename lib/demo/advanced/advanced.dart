import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gyq/demo/advanced/animate_list.dart';
import 'package:flutter_gyq/demo/advanced/diy_list.dart';
import 'package:flutter_gyq/demo/advanced/event/event_list.dart';
import 'package:flutter_gyq/demo/advanced/file_list.dart';
import 'package:flutter_gyq/demo/advanced/globalization_list.dart';
import 'package:flutter_gyq/demo/advanced/packge_list.dart';
import 'package:flutter_gyq/demo/advanced/priciple_list.dart';

class AdvancedPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AdvancedState();
  }
}

class AdvancedState extends State<AdvancedPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<String> tabs = [
    '事件处理与通知',
    "动画",
    "自定义组件",
    "文件操作与网络请求",
    '包与插件',
    '国际化',
    'Flutter核心原理'
  ];

  List<Widget> advancedList = [
    EventList(),
    AnimateList(),
    DiyList(),
    FileList(),
    PackageList(),
    GlobalizationList(),
    PrincipleList()
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('进阶篇'),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.greenAccent,
          labelColor: Colors.greenAccent,
          unselectedLabelColor: Colors.white70,
          indicatorWeight: 2,
          labelStyle: TextStyle(fontSize: 20),
          unselectedLabelStyle: TextStyle(fontSize: 16),
          tabs: tabs
              .map((e) => Tab(
                    text: e,
                  ))
              .toList(),
        ),
      ),
      body: TabBarView(
        children: advancedList,
        controller: _tabController,
      ),
    );
  }
}

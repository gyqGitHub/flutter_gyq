import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gyq/demo/base/base_list.dart';
import 'package:flutter_gyq/demo/base/container_list.dart';
import 'package:flutter_gyq/demo/base/features_list.dart';
import 'package:flutter_gyq/demo/base/layout_list.dart';
import 'package:flutter_gyq/demo/base/scroll_list.dart';

class BasePage extends StatefulWidget {
  @override
  BaseState createState() {
    return BaseState();
  }
}

class BaseState extends State<BasePage> with SingleTickerProviderStateMixin {
  TabController _tabController;
  List tabs = ['基础组件', '布局组件', '容器组件', '滚动组件', '功能组件'];
  List<Widget> baseList = new List();
  

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);

    _tabController.addListener(() {
      switch (_tabController.index) {
        case 0:
      }
    });
    
    baseList..add(BaseList())..add(LayoutList())..add(ContainerList())..add(ScrollList())..add(FeaturesList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("基础篇"),
        centerTitle: true,
        bottom: TabBar(
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.lightGreenAccent,
          labelColor: Colors.lightGreenAccent,
          unselectedLabelColor: Colors.white70,
          indicatorWeight: 4,
          labelStyle: TextStyle(
            fontSize: 20
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 16
          ),
          controller: _tabController,
          tabs: tabs
              .map((e) => Tab(
                    text: e,
                  ))
              .toList(),
        ),
      ),
      body: TabBarView(
          controller: _tabController,
          children: baseList),
    );
  }
}

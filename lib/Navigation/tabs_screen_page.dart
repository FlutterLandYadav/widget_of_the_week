import 'package:flutter/material.dart';
import 'package:widget_of_the_week/pages/three.dart';
import 'package:widget_of_the_week/pages/two.dart';

import '../pages/one.dart';

class TabsScreenPage extends StatefulWidget {
  const TabsScreenPage({super.key});

  @override
  State<TabsScreenPage> createState() => _TabsScreenPageState();
}

class _TabsScreenPageState extends State<TabsScreenPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar'),
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.account_box_outlined),
            ),
            Tab(
              icon: Icon(Icons.bookmark_border),
            ),
            Tab(
              icon: Icon(Icons.alarm_on_outlined),
            ),
          ]),
        ),
        body: const TabBarView(children: [
          OnePage(),
          TwoPage(),
          ThreePage()
        ]),
      ),
    );
  }
}

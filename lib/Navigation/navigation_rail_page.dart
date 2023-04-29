import 'package:flutter/material.dart';

import '../pages/one.dart';
import '../pages/three.dart';
import '../pages/two.dart';

class NavigationRailPage extends StatefulWidget {
  const NavigationRailPage({super.key});

  @override
  State<NavigationRailPage> createState() => _NavigationRailPageState();
}

class _NavigationRailPageState extends State<NavigationRailPage> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    OnePage(),
    TwoPage(),
    ThreePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Rail'),
      ),
      body: Row(
        children: [
          NavigationRail(
              destinations: const <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Icon(Icons.account_box_outlined),
                  selectedIcon: Icon(Icons.account_box),
                  label: Text('First'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.bookmark_border),
                  selectedIcon: Icon(Icons.book),
                  label: Text('Second'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.alarm_on_outlined),
                  selectedIcon: Icon(Icons.alarm),
                  label: Text('Third'),
                ),
              ],
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              selectedIndex: _selectedIndex),
          const VerticalDivider(thickness: 1, width: 1),
          //here you can use any widget to show on the screen.
          Expanded(child: _pages[_selectedIndex]),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:widget_of_the_week/pages/one.dart';
import 'package:widget_of_the_week/pages/three.dart';
import 'package:widget_of_the_week/pages/two.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    OnePage(),
    TwoPage(),
    ThreePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BottomNavigationBar'),),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          currentIndex: _selectedIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box_outlined), label: 'account'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border), label: 'bookmark'),
            BottomNavigationBarItem(
                icon: Icon(Icons.alarm_on_outlined), label: 'alarm')
          ]),
      body: _pages[_selectedIndex],
    );
  }
}

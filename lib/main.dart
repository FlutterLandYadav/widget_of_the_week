import 'package:flutter/material.dart';
import 'package:widget_of_the_week/Navigation/bottom_navigation.dart';
import 'package:widget_of_the_week/Navigation/navigation_rail_page.dart';
import 'package:widget_of_the_week/Navigation/tabs_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget of the week',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const NavigationRailPage(),
      // home: const TabsScreenPage(),
      home: const BottomNavigationPage(),
    );
  }
}

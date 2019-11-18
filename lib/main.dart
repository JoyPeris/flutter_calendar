

import 'package:flutter/material.dart';
import 'package:calendar_tester/homeScreen.dart';
import 'package:calendar_tester/first_challenge/schedule.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final routes=<String, WidgetBuilder>{
    homeScreen.tag:(context)=>homeScreen(),
    MyHomePage.tag:(context)=>MyHomePage()
  };
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calendar Tester',
      theme: new ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: homeScreen(),
      routes: routes,
    );
  }
}



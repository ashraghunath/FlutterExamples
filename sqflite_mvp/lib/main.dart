import 'package:flutter/material.dart';
import 'package:sqflite_mvp/page/login/home_page.dart';
import 'package:sqflite_mvp/page/login/login_page.dart';

void main() => runApp(MyApp());


final routes = {
  '/login' : (BuildContext context) => new LoginPage(),
  '/home' : (BuildContext context) => new HomePage(),
  '/' : (BuildContext context) => new LoginPage(),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SQFLITE App",
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      routes: routes,
    );
  }
}

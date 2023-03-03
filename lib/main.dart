import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

import 'package:primerflutter_prueba/Pages/login_page.dart';
import 'package:primerflutter_prueba/Pages/first_page.dart';
import 'package:primerflutter_prueba/Pages/second_page.dart';
import 'package:primerflutter_prueba/Pages/menu_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/one': (context) => menu_page(),
        '/two': (context) => second_page(),
        '/three': (context) => first_page(),
        '/four': (context) => login_page(),
      },
      initialRoute: '/four',
    );
  }
}

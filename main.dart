import 'package:flutter/material.dart';

import 'package:primero_papractica/Pages/fondobicho_page.dart';
import 'package:primero_papractica/Pages/perfilbicho_page.dart';
import 'package:primero_papractica/Pages/login_page.dart';
import 'package:primero_papractica/Pages/menu_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Principal",
      routes: {
        "/one": ((context) => menu_page()),
        "/two": ((context) => perfilbicho_page()),
        "/three": ((context) => fondobicho_page()),
        "/four": ((context) => login_page())
      },
      initialRoute: "/one",
    ),
  );
}


















/*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      )*/
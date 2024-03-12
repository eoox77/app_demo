import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/subscreen.dart';
import 'package:app_demo/mainscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Demo",
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
        '/sub': (context) => SubScreen(),
      },
    );
  }
}

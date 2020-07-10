import 'package:flutter/material.dart';
import 'package:Blankey_World/flare_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Blankey World',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FlareDemo(
        )
    );
  }
}
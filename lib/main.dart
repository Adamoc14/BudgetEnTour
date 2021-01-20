import 'package:flutter/material.dart';
import 'Components/BottomNav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Budget En Tour",
      theme: ThemeData(
        primaryColor: Colors.green
      ),
      home: BottomNav()
    );
  }
}


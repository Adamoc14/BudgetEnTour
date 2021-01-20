import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Components/BottomNav.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Budget En Tour",
      theme: ThemeData(
        primaryColor: Colors.green
      ),
      home: BottomNav()
    );
  }
}


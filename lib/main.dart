import 'package:flutter/material.dart';
import 'package:myapp/screens/Homescreens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Caffine Dreams',
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: Homescreen(),
    );
  }
}
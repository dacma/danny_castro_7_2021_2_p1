import 'package:flutter/material.dart';
import 'package:rickmorty_app/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick y Morty App',
      home: HomeScreen(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:tastask2/screens/home_page.dart';
import 'Screens/login_page.dart';
import 'screens/home_page.dart';


void main() {
  runApp(const quizApp());
}

class quizApp extends StatelessWidget {
  const quizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

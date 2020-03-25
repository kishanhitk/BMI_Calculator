import 'package:flutter/material.dart';
import 'package:bmi/pages/inputPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF090C22),
          primaryColor: Color(0xFF090C23)),
      home: InputPage(),
    );
  }
}


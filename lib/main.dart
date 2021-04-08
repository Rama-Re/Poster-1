import 'package:flutter/material.dart';

import 'homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poster',
      theme: ThemeData(
          primaryColor: Colors.black,
          accentColor: Colors.grey,
          backgroundColor: Colors.white,
          buttonColor: Colors.lightBlue.shade600
      ),
      home: HomePage(),
    );
  }
}
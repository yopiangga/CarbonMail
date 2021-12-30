import 'package:carbonmail/HomePage.dart';
import 'package:carbonmail/StartPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff4265D6),
        primarySwatch: Colors.blue,
      ),
      home: StartPage(),
    );
  }
}

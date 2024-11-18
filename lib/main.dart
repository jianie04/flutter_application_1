import 'package:flutter/material.dart';
import 'pages/home_page.dart';
// ignore: unused_import
import 'util/dialog_box..dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //for debugbanner
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.grey),
    );
  }
}
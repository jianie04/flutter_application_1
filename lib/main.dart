import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'util/dialog_box..dart';
import 'util/my_button.dart';

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
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
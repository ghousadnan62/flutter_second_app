import 'package:flutter/material.dart';
import 'ImgManager.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stephen Tutorial App',
      home: ImgManager()
    );
  }
}

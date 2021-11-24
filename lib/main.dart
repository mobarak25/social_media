import 'package:flutter/material.dart';
import 'package:social_media/screen/root_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social UI Kit',
      theme: ThemeData(),
      home: RootApp(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:insta/screens/home_page.dart';
import 'package:insta/screens/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insta',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "/profile": (context) => ProfilePage(),
      },
    );
  }
}

import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final scrollbarTheme = ScrollbarThemeData(
    thumbColor: MaterialStateProperty.all<Color>(Color(0xff48E1EC)),
    trackColor: MaterialStateProperty.all<Color>(Colors.grey),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aditya's Portfolio",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scrollbarTheme: scrollbarTheme,
      ),
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';

import 'home_page.dart';
import 'my_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final scrollbarTheme = ScrollbarThemeData(
    thumbColor: MaterialStateProperty.all<Color>(MyColors.clr2),
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

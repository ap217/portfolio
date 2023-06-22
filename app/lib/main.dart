import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'home_page.dart';
import 'my_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyDZD2pfPjdnd8gaIbj5vSj9_HOgw1FlSIc",
    projectId: "aditya-s-portfolio-486c8",
    messagingSenderId: "546050662969",
    appId: "1:546050662969:web:871e971791a7519fe763e8",
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
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
      // FutureBuilder(
      //   future: _initialization,
      //   builder: (context, snapshot) {
      //     if (snapshot.hasError) {
      //       return const Scaffold(
      //         body: Center(
      //           child: Text("Error"),
      //         ),
      //       );
      //     }
      //     if (snapshot.connectionState == ConnectionState.done) {
      //       return HomePage();
      //     }
      //     return const Scaffold(
      //       body: Center(
      //         child: CircularProgressIndicator(),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_ap_ui/pages/details_page.dart';
import 'pages/bottomNav_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: BottomNavScreen.routeName,
      routes: {
        BottomNavScreen.routeName: (ctx) => BottomNavScreen(),
        DetailsPage.routeName: (ctx) => DetailsPage(),
      },
    );
  }
}

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:movie_ap_ui/pages/home_page.dart';

class BottomNavScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  State<BottomNavScreen> createState() => _ShowBottomNavScreenState();
}

class _ShowBottomNavScreenState extends State<BottomNavScreen> {
  int index = 0;
  final screens = [
    HomePage(),
    Center(child: Text("Search")),
    Center(child: Text("Download")),
    Center(child: Text("Profile")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.red.shade900,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ),
        child: NavigationBar(
          height: 65,
          backgroundColor: Colors.black,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(icon: Icon(Icons.home, color: Colors.white,), label: "Home",),
            NavigationDestination(icon: Icon(Icons.search, color: Colors.white,), label: "Search"),
            NavigationDestination(icon: Icon(Icons.download, color: Colors.white,), label: "Download"),
            NavigationDestination(icon: Icon(Icons.person, color: Colors.white,), label: "Profile"),
          ],
        ),
      ),
    );
  }
}

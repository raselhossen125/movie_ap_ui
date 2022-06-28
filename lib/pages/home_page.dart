// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widget/tabBar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        centerTitle: true,
        title: Text('KLIKK', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red.shade900, fontSize: 30),),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications),),
        ],
      ),
      body: Column(
        children: [
          HometabBarWidget(),
        ],
      ),
    );
  }
}
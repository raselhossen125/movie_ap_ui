// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'custom_tab_indicator.dart';
import 'home_tabBar_widget.dart';

class HometabBarWidget extends StatefulWidget {
  @override
  State<HometabBarWidget> createState() => _HometabBarWidgetState();
}

class _HometabBarWidgetState extends State<HometabBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 45,
          child: TabBar(
            indicator: RoundedRectangleTabIndicator(color: Colors.red.shade900, weight: 8, width: 8),
            labelPadding: EdgeInsets.only(left: 0, right: 10),
            indicatorPadding: EdgeInsets.only(left: 0, right: 10),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            unselectedLabelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            indicatorColor: Colors.red.shade900,
            controller: _tabController,
            tabs: [
              Tab(
                text: "Home",
              ),
              Tab(
                text: "Movies",
              ),
              Tab(
                text: "Shows",
              ),
              Tab(
                text: "Songs",
              ),
              Tab(
                text: "Kids",
              ),
            ],
          ),
        ),
        Container(
          height: 350,
          child: TabBarView(
            controller: _tabController,
            children: [
              HomeTabBarWidget(),
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
            ],
          ),
        ),
      ],
    );
  }
}

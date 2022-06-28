// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_element, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:movie_ap_ui/model/movie.dart';
import 'package:movie_ap_ui/pages/details_page.dart';

class HomeTabBarWidget extends StatelessWidget {
  const HomeTabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 10),
          child: Text(
            'New Movie',
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
          ),
        ),
        Container(
          height: 260,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movieList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, DetailsPage.routeName, arguments: movieList[index]);
                      },
                      child: Hero(
                        tag: movieList[index].id,
                        child: Image.network(
                          movieList[index].imageUrl,
                          height: 210,
                          width: 145,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      movieList[index].title,
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Views :  ${movieList[index].views.toString()} M',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

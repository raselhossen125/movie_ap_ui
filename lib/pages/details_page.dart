// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:movie_ap_ui/model/movie.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailsPage extends StatefulWidget {
  static const routeName = 'details-page';

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    Movie data = ModalRoute.of(context)!.settings.arguments as Movie;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Hero(
                  tag: data.id,
                  child: Image.network(
                    data.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.all(0),
                          title: Text(
                            data.title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Text(
                            'Views :  ${data.views.toString()} M',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Text(
                          'Duration :  ${data.duration.toString()}',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RatingBar.builder(
                          ignoreGestures: true,
                          initialRating: data.rating.toDouble(),
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 20,
                          itemPadding: EdgeInsets.only(right: 2),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(data.descripton,
                            textAlign: TextAlign.justify,
                            style: TextStyle(color: Colors.grey))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

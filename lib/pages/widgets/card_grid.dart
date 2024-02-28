import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:priver_movie/helper/app_colors.dart';
import 'package:priver_movie/helper/app_text_style.dart';
import 'package:priver_movie/helper/ratio_calculator.dart';
import 'package:priver_movie/models/movies/movies.dart';
import 'package:priver_movie/pages/detail/view/detail_page.dart';

class CardGrid extends StatefulWidget {
  final Movies movies;
  const CardGrid({super.key, required this.movies});

  @override
  State<CardGrid> createState() => _CardGridState();
}

class _CardGridState extends State<CardGrid> {
  static const String BASE_URL_IMAGE = 'https://image.tmdb.org/t/p/w500';
  final RatioCalculator ratioCalculator = RatioCalculator();
  @override
  Widget build(BuildContext context) {
    String imagenURL = BASE_URL_IMAGE + widget.movies.posterPath;
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            PersistentNavBarNavigator.pushNewScreen(
              context,
              screen: DetailPage(
                movies: widget.movies,
              ),
              withNavBar: false,
              pageTransitionAnimation: PageTransitionAnimation.cupertino,
            );
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: ratioCalculator.calculateWidth(154),
              height: ratioCalculator.calculateHeight(130),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0,
                ),
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage(imagenURL),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(
              top: ratioCalculator.calculateHeight(12),
            ),
            child: Text(
              widget.movies.title,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.text16W400TextStyle,
            )),
      ],
    );
  }
}

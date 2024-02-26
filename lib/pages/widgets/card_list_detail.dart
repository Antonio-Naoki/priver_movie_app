import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:priver_movie/helper/app_colors.dart';
import 'package:priver_movie/helper/app_text_style.dart';
import 'package:priver_movie/helper/ratio_calculator.dart';
import 'package:priver_movie/models/movies/movies.dart';
import 'package:priver_movie/pages/widgets/detail_page.dart';

class CardListDetail extends StatefulWidget {
  final Movies movies;
  const CardListDetail({super.key, required this.movies});

  @override
  State<CardListDetail> createState() => _CardListDetailState();
}

class _CardListDetailState extends State<CardListDetail> {
  static const String BASE_URL_IMAGE = 'https://image.tmdb.org/t/p/w500';
  final RatioCalculator ratioCalculator = RatioCalculator();
  @override
  Widget build(BuildContext context) {
    String imagenURL = BASE_URL_IMAGE + widget.movies.posterPath;
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            // Esta forma de llamar la pagina es para no mostrar la barra de navegacion en esa pagina especifica.
            PersistentNavBarNavigator.pushNewScreen(
              context,
              screen: DetailPage(
                movies: widget.movies,
              ),
              withNavBar:
                  false, // Con esto no mostraremos la barra de navegacion en esta pagina a la que estamos llamando.
              pageTransitionAnimation: PageTransitionAnimation.cupertino,
            );
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: ratioCalculator.calculateWidth(142),
              height: ratioCalculator.calculateHeight(106),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0,
                ),
                borderRadius: BorderRadius.circular(20),
                color: AppColors.barraNavegacionColor,
                image: DecorationImage(
                  image: NetworkImage(imagenURL),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        Container(
          height: ratioCalculator.calculateHeight(40),
          child: Text(
            widget.movies.title + "\n" + "Type: " + widget.movies.mediaType,
            style: AppTextStyle.text12W400TextStyle3
                .copyWith(decoration: TextDecoration.none),
          ),
        ),
      ],
    );
  }
}

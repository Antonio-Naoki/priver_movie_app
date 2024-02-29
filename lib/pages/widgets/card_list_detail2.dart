import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:priver_movie/helper/app_colors.dart';
import 'package:priver_movie/helper/app_text_style.dart';
import 'package:priver_movie/helper/ratio_calculator.dart';
import 'package:priver_movie/models/movies/movies.dart';
import 'package:priver_movie/models/popular/movies_popular.dart';
import 'package:priver_movie/pages/detail/view/detail_page.dart';
import 'package:priver_movie/pages/detail/view/detail_page2.dart';

class CardListDetail2 extends StatefulWidget {
  final MoviesPopular moviesPopular;
  const CardListDetail2({super.key, required this.moviesPopular});

  @override
  State<CardListDetail2> createState() => _CardListDetail2State();
}

class _CardListDetail2State extends State<CardListDetail2> {
  static const String BASE_URL_IMAGE = 'https://image.tmdb.org/t/p/w500';
  final RatioCalculator ratioCalculator = RatioCalculator();
  @override
  Widget build(BuildContext context) {
    String imagenURL = BASE_URL_IMAGE + widget.moviesPopular.posterPath;
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            // Esta forma de llamar la pagina es para no mostrar la barra de navegacion en esa pagina especifica.
            PersistentNavBarNavigator.pushNewScreen(
              context,
              screen: DetailPage2(
                moviesPopular: widget.moviesPopular,
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
          height: ratioCalculator.calculateHeight(20),
          width: ratioCalculator.calculateWidth(110),
          child: Center(
            child: Text(
              widget.moviesPopular.name,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.text12W400TextStyle3
                  .copyWith(decoration: TextDecoration.none),
            ),
          ),
        ),
        Container(
          height: ratioCalculator.calculateHeight(20),
          width: ratioCalculator.calculateWidth(110),
          child: Center(
            child: Text(
              "Type: movies",
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.text12W400TextStyle3
                  .copyWith(decoration: TextDecoration.none),
            ),
          ),
        ),
      ],
    );
  }
}

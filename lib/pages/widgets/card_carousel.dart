import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:priver_movie/helper/app_colors.dart';
import 'package:priver_movie/helper/app_text_style.dart';
import 'package:priver_movie/helper/helper.dart';
import 'package:priver_movie/helper/ratio_calculator.dart';
import 'package:priver_movie/models/movies/movies.dart';
import 'package:priver_movie/pages/widgets/detail_page.dart';

// Segundo Card
class CardCarousel extends StatefulWidget {
  final Movies movies;
  const CardCarousel({super.key, required this.movies});

  @override
  State<CardCarousel> createState() => _CardCarouselState();
}

class _CardCarouselState extends State<CardCarousel> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  static const String BASE_URL_IMAGE = 'https://image.tmdb.org/t/p/w500';

  @override
  Widget build(BuildContext context) {
    String imagenURL = BASE_URL_IMAGE + widget.movies.posterPath;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              // margin: EdgeInsets.only(
              //   left: ratioCalculator.calculateWidth(58),
              //   // right: ratioCalculator.calculateWidth(59),
              //   bottom: ratioCalculator.calculateHeight(11),
              // ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                width: ratioCalculator.calculateWidth(259),
                height: ratioCalculator.calculateHeight(336),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.barraNavegacionColor,
                  image: DecorationImage(
                    image: NetworkImage(imagenURL),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Card(
                          color: Colors.transparent,
                          margin: EdgeInsets.only(
                            top: ratioCalculator.calculateHeight(16),
                            right: ratioCalculator.calculateWidth(16),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            width: ratioCalculator.calculateWidth(77),
                            height: ratioCalculator.calculateHeight(46),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white24,
                            ),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        left:
                                            ratioCalculator.calculateWidth(10),
                                        top: ratioCalculator.calculateHeight(6),
                                      ),
                                      child: Text(
                                        "IMDb",
                                        style: AppTextStyle.text8W400TextStyle,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: ratioCalculator.calculateWidth(5),
                                      ),
                                      child: Icon(
                                        Icons.star,
                                        size: 24,
                                        color: AppColors.cardIconStarColor,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        // Aqui llamo a la funcion de Helper que convierte el double a string y solo muestra 2 digitos.
                                        formatearDecimal(
                                            widget.movies.voteAverage),
                                        style: AppTextStyle.text16W400TextStyle,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Card(
                      color: Colors.transparent,
                      margin: EdgeInsets.only(
                        top: ratioCalculator.calculateHeight(178),
                        left: ratioCalculator.calculateWidth(16),
                        right: ratioCalculator.calculateWidth(16),
                        // bottom: ratioCalculator.calculateHeight(15),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        width: ratioCalculator.calculateWidth(226),
                        height: ratioCalculator.calculateHeight(76),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white24,
                        ),
                        child: Center(
                          child: Text(
                            widget.movies.title,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle.text16W400TextStyle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

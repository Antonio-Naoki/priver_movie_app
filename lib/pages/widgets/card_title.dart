import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:priver_movie/helper/app_colors.dart';
import 'package:priver_movie/helper/app_text_style.dart';
import 'package:priver_movie/helper/ratio_calculator.dart';
import 'package:priver_movie/models/movies/movies.dart';
import 'package:priver_movie/pages/widgets/detail_page.dart';
import 'package:priver_movie/pages/home/controller/home_controller.dart';
import 'package:provider/provider.dart';

// Primer Card
class CardTitle extends StatefulWidget {
  final Movies movies;

  const CardTitle({super.key, required this.movies});

  @override
  State<CardTitle> createState() => _CardTitleState();
}

class _CardTitleState extends State<CardTitle> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  static const String BASE_URL_IMAGE = 'https://image.tmdb.org/t/p/w500';

  @override
  Widget build(BuildContext context) {
    // final controller = Provider.of<HomeController>(context);
    String imagenURL = BASE_URL_IMAGE + widget.movies.posterPath;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            // Esta forma de llamar la pagina es para no mostrar la barra de navegacion en esa pagina especifica.
            PersistentNavBarNavigator.pushNewScreen(
              context,
              screen: DetailPage(movies: widget.movies,),
              withNavBar: false, // Con esto no mostraremos la barra de navegacion en esta pagina a la que estamos llamando.
              pageTransitionAnimation: PageTransitionAnimation.cupertino,
            );
          },
          child: Card(
            margin: EdgeInsets.only(
              left: ratioCalculator.calculateWidth(27),
              right: ratioCalculator.calculateWidth(24),
              bottom: ratioCalculator.calculateHeight(36),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              width: ratioCalculator.calculateWidth(327),
              height: ratioCalculator.calculateHeight(191),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0,
                ),
                borderRadius: BorderRadius.circular(30),
                color: AppColors.barraNavegacionColor,
                image: DecorationImage(
                  image: NetworkImage(imagenURL),
                  fit: BoxFit.cover,
                ),
              ),
              child: Card(
                color: Colors.transparent,
                margin: EdgeInsets.only(
                  top: ratioCalculator.calculateHeight(120),
                  left: ratioCalculator.calculateWidth(12),
                  right: ratioCalculator.calculateWidth(104),
                  bottom: ratioCalculator.calculateHeight(8),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: ratioCalculator.calculateWidth(211),
                  height: ratioCalculator.calculateHeight(62),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: ratioCalculator.calculateWidth(12),
                          right: ratioCalculator.calculateWidth(12),
                        ),
                        child: Icon(
                          Icons.play_circle,
                          color: AppColors.iconSelectNavigation,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: ratioCalculator.calculateHeight(11),
                          bottom: ratioCalculator.calculateHeight(14),
                          right: ratioCalculator.calculateWidth(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Continue Watching",
                                style: AppTextStyle.text12W400TextStyle,
                              ),
                            ),
                            Container(
                              child: Text(
                                "Ready Player one",
                                style: AppTextStyle.text16W400TextStyle,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

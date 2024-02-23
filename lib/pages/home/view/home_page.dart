import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:priver_movie/helper/app_colors.dart';
import 'package:priver_movie/helper/app_text_style.dart';
import 'package:priver_movie/helper/helper.dart';
import 'package:priver_movie/helper/ratio_calculator.dart';
import 'package:priver_movie/models/movies/movies.dart';
import 'package:priver_movie/pages/home/controller/home_controller.dart';
import 'package:priver_movie/pages/home/controller/state/home_state.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final RatioCalculator ratioCalculator = RatioCalculator();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeController(const HomeState())..init(),
      child: Scaffold(
        body: SafeArea(
          child: Builder(builder: (contextF) {
            final controller = Provider.of<HomeController>(contextF);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: ratioCalculator.calculateWidth(24),
                    top: ratioCalculator.calculateHeight(44),
                    bottom: ratioCalculator.calculateHeight(28),
                  ),
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          "Stream",
                          style: AppTextStyle.text24W400TextStyle,
                        ),
                      ),
                      Text(
                        " Everywhere",
                        style: AppTextStyle.text24W400TextStyle2,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: ratioCalculator.calculateHeight(36),
                  ),
                  height: ratioCalculator.calculateHeight(191),
                  child:
                      controller.state.fetchRecommendedState.when(loading: () {
                    return Center(child: CircularProgressIndicator());
                  }, loaded: (list) {
                    return ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          return CardTitle(
                            movies: list[6],
                          );
                        });
                  }),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(24),
                      bottom: ratioCalculator.calculateHeight(24)),
                  child: Text(
                    "Trending",
                    style: AppTextStyle.text24W400TextStyle2,
                  ),
                ),
                Container(
                  height: ratioCalculator.calculateHeight(360),
                  child: controller.state.fetchRecommendedState.when(
                    loading: () => Center(child: CircularProgressIndicator()),
                    loaded: (list) => CarouselSlider.builder(
                      itemCount: list.length,
                      options: CarouselOptions(
                        height: ratioCalculator.calculateHeight(360),
                        viewportFraction: 0.7, 
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                        onPageChanged: (index, reason) {},
                      ),
                      itemBuilder: (context, index, realIndex) {
                        return CardCarousel(
                          movies: list[index],
                        );
                      },
                    ),
                  ),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}

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
    final controller = Provider.of<HomeController>(context);
    String imagenURL = BASE_URL_IMAGE + widget.movies.posterPath;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
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
      ],
    );
  }
}

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
          Card(
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
                                      left: ratioCalculator.calculateWidth(10),
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
                                      formatearDecimal(widget.movies.voteAverage),
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
        ],
      ),
    );
  }
}

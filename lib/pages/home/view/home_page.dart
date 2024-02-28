import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:priver_movie/helper/app_colors.dart';
import 'package:priver_movie/helper/app_text_style.dart';
import 'package:priver_movie/helper/helper.dart';
import 'package:priver_movie/helper/ratio_calculator.dart';
import 'package:priver_movie/models/movies/movies.dart';
import 'package:priver_movie/pages/detail/view/detail_page.dart';
import 'package:priver_movie/pages/home/controller/home_controller.dart';
import 'package:priver_movie/pages/home/controller/state/home_state.dart';
import 'package:priver_movie/pages/widgets/card_carousel.dart';
import 'package:priver_movie/pages/widgets/card_title.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

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
                  child: controller.state.fetchRecommendedState.when(
                      loading: () {
                    return Center(child: CircularProgressIndicator());
                  }, loaded: (list) {
                    return CardTitle(
                      moviesPopular: list[6],
                    );
                  }),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(24),
                      bottom: ratioCalculator.calculateHeight(24)),
                  child: Text(
                    "Popular",
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
                        height: ratioCalculator.calculateHeight(395),
                        viewportFraction: 0.7,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                        onPageChanged: (index, reason) {},
                      ),
                      itemBuilder: (context, index, realIndex) {
                        return CardCarousel(
                          moviesPopular: list[index],
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

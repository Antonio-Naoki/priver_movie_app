import 'package:flutter/material.dart';
import 'package:priver_movie/helper/app_colors.dart';
import 'package:priver_movie/helper/app_text_style.dart';
import 'package:priver_movie/helper/helper.dart';
import 'package:priver_movie/helper/ratio_calculator.dart';
import 'package:priver_movie/models/movies/movies.dart';
import 'package:priver_movie/models/popular/movies_popular.dart';
import 'package:priver_movie/pages/home/controller/home_controller.dart';
import 'package:priver_movie/pages/home/controller/state/home_state.dart';
import 'package:priver_movie/pages/widgets/card_list_detail.dart';
import 'package:priver_movie/pages/widgets/card_list_detail2.dart';
import 'package:provider/provider.dart';

class DetailPage2 extends StatefulWidget {
  final MoviesPopular moviesPopular;

  const DetailPage2({
    super.key,
    required this.moviesPopular,
  });

  @override
  State<DetailPage2> createState() => _DetailPage2State();
}

class _DetailPage2State extends State<DetailPage2> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  static const String BASE_URL_IMAGE = 'https://image.tmdb.org/t/p/w500';

  @override
  Widget build(BuildContext context) {
    String imagenURL = BASE_URL_IMAGE + widget.moviesPopular.posterPath;
    return ChangeNotifierProvider(
      create: (_) => HomeController(const HomeState())..init(),
      child: SafeArea(
        child: Builder(builder: (contextF) {
          final controller = Provider.of<HomeController>(contextF);
          return SingleChildScrollView(
            child: Container(
              color: AppColors.barraNavegacionColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: ratioCalculator.calculateHeight(24),
                    ),
                    width: double.infinity,
                    height: ratioCalculator.calculateHeight(287),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(imagenURL),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Icon(
                      Icons.play_circle,
                      size: 64,
                      color: AppColors.iconSelectNavigation,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: ratioCalculator.calculateWidth(300),
                        margin: EdgeInsets.only(
                          left: ratioCalculator.calculateWidth(24),
                        ),
                        child: Text(
                          widget.moviesPopular.name,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.text24W500TextStyle
                              .copyWith(decoration: TextDecoration.none),
                        ),
                      ),
                      SizedBox(
                        width: ratioCalculator.calculateWidth(8),
                      ),
                      Container(
                        width: ratioCalculator.calculateWidth(29),
                        height: ratioCalculator.calculateHeight(22.04),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.iconSelectNavigation2.withOpacity(0.5),
                        ),
                        child: Center(
                          child: Text(
                            "4K",
                            style: AppTextStyle.text12W400TextStyle2
                                .copyWith(decoration: TextDecoration.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ratioCalculator.calculateHeight(8),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: ratioCalculator.calculateWidth(24),
                        ),
                        child: Icon(
                          Icons.punch_clock,
                          size: 14,
                          color: AppColors.textTitleColorOpacity2,
                        ),
                      ),
                      Container(
                        child: Text(
                          " 152 minutes",
                          style: AppTextStyle.text12W400TextStyle2
                              .copyWith(decoration: TextDecoration.none),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: ratioCalculator.calculateWidth(18),
                        ),
                        child: Icon(
                          Icons.star,
                          size: 14,
                          color: AppColors.textTitleColorOpacity2,
                        ),
                      ),
                      Container(
                        child: Text(
                          " " +
                              formatearDecimal(widget.moviesPopular.voteAverage) +
                              " (IMDb)",
                          style: AppTextStyle.text12W400TextStyle2.copyWith(
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(24),
                      right: ratioCalculator.calculateWidth(24),
                    ),
                    child: Divider(
                      color: AppColors.dividerColor,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: ratioCalculator.calculateWidth(24),
                              right: ratioCalculator.calculateWidth(56),
                            ),
                            child: Text(
                              "Release date",
                              style: AppTextStyle.text16W500TextStyle.copyWith(
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(
                              right: ratioCalculator.calculateWidth(155),
                            ),
                            child: Text(
                              "Genre",
                              style: AppTextStyle.text16W500TextStyle.copyWith(
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: ratioCalculator.calculateWidth(24),
                              top: ratioCalculator.calculateHeight(8),
                              // right: ratioCalculator.calculateWidth(50),
                            ),
                            child: Text(
                              widget.moviesPopular.firstAirDate,
                              style: AppTextStyle.text12W400TextStyle2.copyWith(
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(
                              top: ratioCalculator.calculateWidth(8),
                            ),
                            width: ratioCalculator.calculateWidth(60),
                            height: ratioCalculator.calculateHeight(25),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: AppColors.iconSelectNavigation2
                                  .withOpacity(0.5),
                            ),
                            child: Center(
                              child: Text(
                                "Action",
                                style: AppTextStyle.text12W400TextStyle2
                                    .copyWith(decoration: TextDecoration.none),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: ratioCalculator.calculateWidth(12),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              right: ratioCalculator.calculateWidth(70),
                              top: ratioCalculator.calculateWidth(8),
                            ),
                            width: ratioCalculator.calculateWidth(60),
                            height: ratioCalculator.calculateHeight(25),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: AppColors.iconSelectNavigation2
                                  .withOpacity(0.5),
                            ),
                            child: Center(
                              child: Text(
                                "Sci-Fi",
                                style: AppTextStyle.text12W400TextStyle2
                                    .copyWith(decoration: TextDecoration.none),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(24),
                      right: ratioCalculator.calculateWidth(24),
                    ),
                    child: Divider(
                      color: AppColors.dividerColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(24),
                      top: ratioCalculator.calculateHeight(16),
                    ),
                    child: Text(
                      "Synopsis",
                      style: AppTextStyle.text16W500TextStyle
                          .copyWith(decoration: TextDecoration.none),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(24),
                      right: ratioCalculator.calculateWidth(24),
                      top: ratioCalculator.calculateHeight(12),
                      bottom: ratioCalculator.calculateHeight(20),
                    ),
                    child: Text(
                      widget.moviesPopular.overview,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.text14W400TextStyle2
                          .copyWith(decoration: TextDecoration.none),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(24),
                      bottom: ratioCalculator.calculateHeight(16),
                    ),
                    child: Text(
                      "Related Movies",
                      style: AppTextStyle.text16W500TextStyle
                          .copyWith(decoration: TextDecoration.none),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(24),
                    ),
                    height: 190,
                    child:
                        controller.state.fetchRecommendedState.when(loading: () {
                      return Center(child: CircularProgressIndicator());
                    }, loaded: (list) {
                      return ListView.builder(
                          itemCount: list.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return CardListDetail2(
                              moviesPopular: list[index],
                            );
                          });
                    }),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

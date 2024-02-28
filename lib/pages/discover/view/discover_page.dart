import 'package:flutter/material.dart';
import 'package:priver_movie/helper/app_colors.dart';
import 'package:priver_movie/helper/app_text_style.dart';
import 'package:priver_movie/helper/ratio_calculator.dart';
import 'package:priver_movie/pages/discover/controller/discover_controller.dart';
import 'package:priver_movie/pages/discover/controller/state/discover_state.dart';
import 'package:priver_movie/pages/home/controller/home_controller.dart';
import 'package:priver_movie/pages/widgets/card_grid.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  final List<String> listTile = [
    "Movies",
    "Tv Series",
    "Documentary",
    "Sports",
    "Seasons",
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DiscoverController(const DiscoverState())..init(),
      child: Scaffold(
        body: SafeArea(
          child: Builder(builder: (contextF) {
            final controller = Provider.of<DiscoverController>(contextF);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: ratioCalculator.calculateHeight(36),
                    left: ratioCalculator.calculateWidth(24),
                    bottom: ratioCalculator.calculateHeight(20),
                  ),
                  child: Text(
                    "Find Movies, Tv series,\nand more..",
                    style: AppTextStyle.text24W500TextStyle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: ratioCalculator.calculateWidth(24),
                    right: ratioCalculator.calculateWidth(24),
                    bottom: ratioCalculator.calculateHeight(24),
                  ),
                  width: ratioCalculator.calculateWidth(330),
                  height: ratioCalculator.calculateHeight(48),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: AppColors.barraBusquedaColor,
                      filled: true,
                      hintStyle: TextStyle(color: AppColors.card2Title),
                      hintText: 'Buscar...',
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColors.labelTitleColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: ratioCalculator.calculateWidth(24),
                    right: ratioCalculator.calculateWidth(17),
                  ),
                  height: 50,
                  child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(width: 24),
                      itemCount: listTile.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            controller.changeColor();
                            currentIndex = index;
                            // selectedItemIndex = index;
                          },
                          child: Text(
                            listTile[index],
                            style: TextStyle(
                              color: controller.state.isColor &&
                                      index == currentIndex
                                  ? AppColors.barraTitulosColor
                                  : AppTextStyle.text16W400TextStyle.color,
                              fontSize:
                                  AppTextStyle.text16W400TextStyle.fontSize,
                              fontWeight:
                                  AppTextStyle.text16W400TextStyle.fontWeight,
                            ),
                          ),
                        );
                      }),
                ),
                Container(
                  height: ratioCalculator.calculateHeight(500),
                  child: controller.state.fetchDiscoverState.when(
                      loading: () => Center(child: CircularProgressIndicator()),
                      loaded: (list) {
                        return GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // number of items in each row
                            mainAxisSpacing: 10, // spacing between rows
                            crossAxisSpacing: 8.0, // spacing between columns
                          ),
                          padding:
                              EdgeInsets.all(8.0), // padding around the grid
                          itemCount: list.length, // total number of items
                          itemBuilder: (context, index) {
                            return CardGrid(movies: list[index]);
                          },
                        );
                      }),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

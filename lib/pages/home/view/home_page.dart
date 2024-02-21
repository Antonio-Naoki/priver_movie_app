import 'package:flutter/material.dart';
import 'package:priver_movie/helper/app_colors.dart';
import 'package:priver_movie/helper/app_text_style.dart';
import 'package:priver_movie/helper/ratio_calculator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final RatioCalculator ratioCalculator = RatioCalculator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
            CardTitle(),
            Container(
              margin: EdgeInsets.only(
                left: ratioCalculator.calculateWidth(24),
              ),
              child: Text(
                "Trending",
                style: AppTextStyle.text24W400TextStyle2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Primer Card
class CardTitle extends StatefulWidget {
  const CardTitle({super.key});

  @override
  State<CardTitle> createState() => _CardTitleState();
}

class _CardTitleState extends State<CardTitle> {
  final RatioCalculator ratioCalculator = RatioCalculator();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          margin: EdgeInsets.only(
            left: ratioCalculator.calculateWidth(24),
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
              borderRadius: BorderRadius.circular(30),
              color: Colors.blue,
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

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:priver_movie/helper/app_colors.dart';
import 'package:priver_movie/helper/app_text_style.dart';
import 'package:priver_movie/helper/ratio_calculator.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  final List<String> listAnimation = [
    ".",
    ".",
    ".",
    ".",
    ".",
    ".",
    ".",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: ratioCalculator.calculateWidth(83.2),
                  height: ratioCalculator.calculateHeight(83.2),
                  margin: EdgeInsets.only(
                    top: ratioCalculator.calculateHeight(20),
                    left: ratioCalculator.calculateWidth(24),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 13, 68, 112),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(66.56),
                    color: const Color.fromARGB(255, 8, 70, 121),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(66.56),
                    child: Image.network(
                      "https://c1.klipartz.com/pngpicture/823/765/sticker-png-login-icon-system-administrator-user-user-profile-icon-design-avatar-face-head.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: ratioCalculator.calculateWidth(12),
                    top: ratioCalculator.calculateHeight(70),
                    bottom: ratioCalculator.calculateHeight(50),
                  ),
                  child: Text(
                    "User",
                    style: AppTextStyle.text24W500TextStyle,
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
            Container(
              margin: EdgeInsets.only(
                top: ratioCalculator.calculateHeight(150),
              ),
              height: ratioCalculator.calculateHeight(200),
              child: CarouselSlider.builder(
                itemCount: listAnimation.length,
                options: CarouselOptions(
                  height: ratioCalculator.calculateHeight(900),
                  viewportFraction: 0.05,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(milliseconds: 100),
                  onPageChanged: (index, reason) {},
                ),
                itemBuilder: (context, index, realIndex) {
                  return CardAnimation(
                    listAnimation[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardAnimation extends StatefulWidget {
  const CardAnimation(String listAnimation, {super.key});

  @override
  State<CardAnimation> createState() => _CardAnimationState();
}

class _CardAnimationState extends State<CardAnimation> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              width: ratioCalculator.calculateWidth(250),
              height: ratioCalculator.calculateHeight(200),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0,
                ),
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

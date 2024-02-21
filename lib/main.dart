import 'package:flutter/material.dart';
import 'package:priver_movie/global/botton_page.dart';
import 'package:priver_movie/helper/app_colors.dart';
import 'package:priver_movie/helper/ratio_calculator.dart';
import 'package:priver_movie/pages/home/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final RatioCalculator ratioCalculator = RatioCalculator();
    ratioCalculator.updateRatio(
      context: context,
      figmaWidth: 390,
      figmaHeight: 844,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottonPage(),
      theme: ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: AppColors.barraNavegacionColor,
      ),
    );
  }
}

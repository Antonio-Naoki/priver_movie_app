import "package:flutter/material.dart";
import 'package:priver_movie/helper/data_test/data_test.dart';
import 'package:priver_movie/models/movies/movies.dart';
import 'package:priver_movie/pages/discover/controller/state/discover_state.dart';
import 'package:priver_movie/pages/home/controller/state/home_state.dart';
import 'package:priver_movie/state_notifier.dart';

class DiscoverController extends StateNotifier {
  List<dynamic> listTrendingMovies = TrendingMovies["results"];
  List<Movies> listTrendingMoviesObject = [];

  DiscoverController(super._state);

  void init() {
    listTrendingMoviesObject =
        listTrendingMovies.map((json) => Movies.fromJson(json)).toList();

    Future.delayed(Duration(seconds: 5), () {
      state = state.copyWith(
          fetchDiscoverState:
              FetchDiscoverState.loaded(listTrendingMoviesObject));
    });
  }

  void changeColor() {
    state = state.copyWith(isColor: !state.isColor);
  }

  void change() {
    ChangeNotifier();
  }
}

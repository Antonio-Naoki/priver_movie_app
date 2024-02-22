import "package:flutter/material.dart";
import 'package:priver_movie/helper/data_test/data_test.dart';
import 'package:priver_movie/models/movies/movies.dart';
import 'package:priver_movie/pages/home/controller/state/home_state.dart';
import 'package:priver_movie/state_notifier.dart';
import 'package:provider/provider.dart';

// para usar el estado debes usar "extends StateNotifer" con "ChangeNotifer" no funciona.
class HomeController extends StateNotifier<HomeState> {
  List<dynamic> listTrendingMovies = TrendingMovies["results"];
  List<Movies> listTrendingMoviesObject = [];

  HomeController(super._state);

  void init() {
    listTrendingMoviesObject =
        listTrendingMovies.map((json) => Movies.fromJson(json)).toList();

    Future.delayed(Duration(seconds: 5), () {
      state = state.copyWith(
          fetchRecommendedState:
              FetchRecommendedState.loaded(listTrendingMoviesObject));
    });
  }

  void change() {
    ChangeNotifier();
  }
}

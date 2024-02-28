import "package:flutter/material.dart";
import 'package:priver_movie/data/remote/api_service.dart';
import 'package:priver_movie/domain/either/either.dart';
import 'package:priver_movie/helper/data_test/data_test.dart';
import 'package:priver_movie/models/movies/movies.dart';
import 'package:priver_movie/pages/discover/controller/state/discover_state.dart';
import 'package:priver_movie/pages/home/controller/state/home_state.dart';
import 'package:priver_movie/state_notifier.dart';

class DiscoverController extends StateNotifier {
  final ApiService apiService = ApiService();

  List<Movies> listTrendingMoviesObject = [];

  DiscoverController(super._state);

  void init() async {
    var response = await apiService.getTrendingMovies();

    response.when(left: (e) {
      print("${e.toString()}");
    }, right: (json) {
      List<dynamic> list = json["results"];
      listTrendingMoviesObject =
          list.map((json) => Movies.fromJson(json)).toList();

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

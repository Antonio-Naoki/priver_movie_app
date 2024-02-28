import "package:flutter/material.dart";
import 'package:priver_movie/data/remote/api_service.dart';
import 'package:priver_movie/helper/data_test/data_test.dart';
import 'package:priver_movie/models/movies/movies.dart';
import 'package:priver_movie/models/popular/movies_popular.dart';
import 'package:priver_movie/pages/home/controller/state/home_state.dart';
import 'package:priver_movie/state_notifier.dart';
import 'package:provider/provider.dart';

// para usar el estado debes usar "extends StateNotifer" con "ChangeNotifer" no funciona.
class HomeController extends StateNotifier<HomeState> {
  final ApiService apiService = ApiService();

  List<MoviesPopular> listPopularMoviesObject = [];

  HomeController(super._state);

  void init() async {
    var response = await apiService.getPopularMovies();

    response.when(left: (e) {
      print("${e.toString()}");
    }, right: (json) {
      List<dynamic> list = json["results"];
      listPopularMoviesObject =
          list.map((json) => MoviesPopular.fromJson(json)).toList();

      state = state.copyWith(
          fetchRecommendedState:
              FetchRecommendedState.loaded(listPopularMoviesObject));
    });
  }

  void change() {
    ChangeNotifier();
  }
}

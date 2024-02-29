// import "package:flutter/material.dart";
// import 'package:priver_movie/data/remote/api_service.dart';
// import 'package:priver_movie/helper/data_test/data_test.dart';
// import 'package:priver_movie/models/list/movies_list.dart';
// import 'package:priver_movie/models/movies/movies.dart';
// import 'package:priver_movie/models/popular/movies_popular.dart';
// import 'package:priver_movie/pages/detail/controller/state/detail_state.dart';
// import 'package:priver_movie/pages/home/controller/state/home_state.dart';
// import 'package:priver_movie/state_notifier.dart';
// import 'package:provider/provider.dart';

// class DetailController extends StateNotifier<DetailController> {
//   final ApiService apiService = ApiService();

//   List<MoviesLista> listMoviesListObject = [];

//   DetailController(super._state);

//   void init() async {
//     var response = await apiService.getNewPlayingMovies();

//     response.when(left: (e) {
//       // print("${e.toString()}");
//     }, right: (json) {
//       List<dynamic> list = json["results"];
//       listMoviesListObject =
//           list.map((json) => MoviesLista.fromJson(json)).toList();

//       state = state.copyWith(
//           fetchDetailState:
//               FetchDetailState.loaded(listMoviesListObject));
//     });
//   }

//   void change() {
//     ChangeNotifier();
//   }
// }

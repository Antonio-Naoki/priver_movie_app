import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:priver_movie/models/movies/movies.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(FetchRecommendedState.loading())
    FetchRecommendedState fetchRecommendedState,
  }) = _HomeState;
}

// primer fetch
@freezed
class FetchRecommendedState with _$FetchRecommendedState {
  const factory FetchRecommendedState.loading() = FetchRecommendedStateLoading;
  const factory FetchRecommendedState.loaded(
    List<Movies> listRecommended,
  ) = FetchRecommendedStateLoaded;
}

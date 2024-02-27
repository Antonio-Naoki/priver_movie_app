import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:priver_movie/models/movies/movies.dart';

part 'discover_state.freezed.dart';

@freezed
class DiscoverState with _$DiscoverState {
  const factory DiscoverState({
    @Default(false) bool isColor,
    @Default(FetchDiscoverState.loading())
    FetchDiscoverState fetchDiscoverState,
  }) = _DiscoverState;
}

@freezed 
class FetchDiscoverState with _$FetchDiscoverState {
  const factory FetchDiscoverState.loading() = FetchDiscoverStateLoading;
  const factory FetchDiscoverState.loaded(
    List<Movies> listDiscover,
  ) = FetchDiscoverStateLoaded;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:priver_movie/models/movies/movies.dart';

part 'detail_state.freezed.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    @Default(FetchDetailState.loading())
    FetchDetailState fetchDetailState,
  }) = _DetailState;
}

@freezed 
class FetchDetailState with _$FetchDetailState {
  const factory FetchDetailState.loading() = FetchDetailStateLoading;
  const factory FetchDetailState.loaded(
    List<Movies> listDetail,
  ) = FetchDetailStateLoaded;
}

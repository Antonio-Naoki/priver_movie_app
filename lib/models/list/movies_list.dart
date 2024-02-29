import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_list.freezed.dart';
part 'movies_list.g.dart';

@freezed
class MoviesLista with _$MoviesLista {
  factory MoviesLista({
    @JsonKey(name: "vote_average") required double voteAverage,
    @JsonKey(name: "poster_path") required String posterPath,
    @JsonKey(name: "release_date") required String releaseDate,
    required String overview,
    required String title,
  }) = _MoviesLista;

  const MoviesLista._();

  factory MoviesLista.fromJson(Map<String, dynamic> json) => _$MoviesListaFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_popular.freezed.dart';
part 'movies_popular.g.dart';

@freezed
class MoviesPopular with _$MoviesPopular {
  factory MoviesPopular({
    required String name,
    @JsonKey(name: "vote_average") required double voteAverage,
    @JsonKey(name: "poster_path") required String posterPath,
    @JsonKey(name: "first_air_date") required String firstAirDate,
    required String overview,
  }) = _MoviesPopular;

  const MoviesPopular._();

  factory MoviesPopular.fromJson(Map<String, dynamic> json) => _$MoviesPopularFromJson(json);
}

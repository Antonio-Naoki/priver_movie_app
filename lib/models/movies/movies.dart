import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies.freezed.dart';
part 'movies.g.dart';

@freezed
class Movies with _$Movies {
  factory Movies({
    @JsonKey(name: "poster_path") required String posterPath,
    required String title,
    @JsonKey(name: "original_language") required String originalLenguage,
    required String overview,
    @JsonKey(name: "media_type") required String mediaType,
    @JsonKey(name: "release_date") required String releaseDate,
    @JsonKey(name: "vote_average") required double voteAverage,
    required int id,
  }) = _Movies;

  const Movies._();

  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);
}

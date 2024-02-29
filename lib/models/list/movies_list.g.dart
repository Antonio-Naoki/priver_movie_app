// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviesListaImpl _$$MoviesListaImplFromJson(Map<String, dynamic> json) =>
    _$MoviesListaImpl(
      voteAverage: (json['vote_average'] as num).toDouble(),
      posterPath: json['poster_path'] as String,
      releaseDate: json['release_date'] as String,
      overview: json['overview'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$MoviesListaImplToJson(_$MoviesListaImpl instance) =>
    <String, dynamic>{
      'vote_average': instance.voteAverage,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'overview': instance.overview,
      'title': instance.title,
    };

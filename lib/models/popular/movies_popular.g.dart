// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_popular.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviesPopularImpl _$$MoviesPopularImplFromJson(Map<String, dynamic> json) =>
    _$MoviesPopularImpl(
      name: json['name'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      posterPath: json['poster_path'] as String,
    );

Map<String, dynamic> _$$MoviesPopularImplToJson(_$MoviesPopularImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'vote_average': instance.voteAverage,
      'poster_path': instance.posterPath,
    };

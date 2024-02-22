// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviesImpl _$$MoviesImplFromJson(Map<String, dynamic> json) => _$MoviesImpl(
      posterPath: json['poster_path'] as String,
      title: json['title'] as String,
      originalLenguage: json['original_language'] as String,
      overview: json['overview'] as String,
      mediaType: json['media_type'] as String,
      releaseDate: json['release_date'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      id: json['id'] as int,
    );

Map<String, dynamic> _$$MoviesImplToJson(_$MoviesImpl instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
      'title': instance.title,
      'original_language': instance.originalLenguage,
      'overview': instance.overview,
      'media_type': instance.mediaType,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
      'id': instance.id,
    };

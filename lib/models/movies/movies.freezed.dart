// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Movies _$MoviesFromJson(Map<String, dynamic> json) {
  return _Movies.fromJson(json);
}

/// @nodoc
mixin _$Movies {
  @JsonKey(name: "poster_path")
  String get posterPath => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "original_language")
  String get originalLenguage => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "media_type")
  String get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double get voteAverage => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesCopyWith<Movies> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesCopyWith<$Res> {
  factory $MoviesCopyWith(Movies value, $Res Function(Movies) then) =
      _$MoviesCopyWithImpl<$Res, Movies>;
  @useResult
  $Res call(
      {@JsonKey(name: "poster_path") String posterPath,
      String title,
      @JsonKey(name: "original_language") String originalLenguage,
      String overview,
      @JsonKey(name: "media_type") String mediaType,
      @JsonKey(name: "release_date") String releaseDate,
      @JsonKey(name: "vote_average") double voteAverage,
      int id});
}

/// @nodoc
class _$MoviesCopyWithImpl<$Res, $Val extends Movies>
    implements $MoviesCopyWith<$Res> {
  _$MoviesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = null,
    Object? title = null,
    Object? originalLenguage = null,
    Object? overview = null,
    Object? mediaType = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalLenguage: null == originalLenguage
          ? _value.originalLenguage
          : originalLenguage // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesImplCopyWith<$Res> implements $MoviesCopyWith<$Res> {
  factory _$$MoviesImplCopyWith(
          _$MoviesImpl value, $Res Function(_$MoviesImpl) then) =
      __$$MoviesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "poster_path") String posterPath,
      String title,
      @JsonKey(name: "original_language") String originalLenguage,
      String overview,
      @JsonKey(name: "media_type") String mediaType,
      @JsonKey(name: "release_date") String releaseDate,
      @JsonKey(name: "vote_average") double voteAverage,
      int id});
}

/// @nodoc
class __$$MoviesImplCopyWithImpl<$Res>
    extends _$MoviesCopyWithImpl<$Res, _$MoviesImpl>
    implements _$$MoviesImplCopyWith<$Res> {
  __$$MoviesImplCopyWithImpl(
      _$MoviesImpl _value, $Res Function(_$MoviesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = null,
    Object? title = null,
    Object? originalLenguage = null,
    Object? overview = null,
    Object? mediaType = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
    Object? id = null,
  }) {
    return _then(_$MoviesImpl(
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalLenguage: null == originalLenguage
          ? _value.originalLenguage
          : originalLenguage // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoviesImpl extends _Movies {
  _$MoviesImpl(
      {@JsonKey(name: "poster_path") required this.posterPath,
      required this.title,
      @JsonKey(name: "original_language") required this.originalLenguage,
      required this.overview,
      @JsonKey(name: "media_type") required this.mediaType,
      @JsonKey(name: "release_date") required this.releaseDate,
      @JsonKey(name: "vote_average") required this.voteAverage,
      required this.id})
      : super._();

  factory _$MoviesImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviesImplFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String posterPath;
  @override
  final String title;
  @override
  @JsonKey(name: "original_language")
  final String originalLenguage;
  @override
  final String overview;
  @override
  @JsonKey(name: "media_type")
  final String mediaType;
  @override
  @JsonKey(name: "release_date")
  final String releaseDate;
  @override
  @JsonKey(name: "vote_average")
  final double voteAverage;
  @override
  final int id;

  @override
  String toString() {
    return 'Movies(posterPath: $posterPath, title: $title, originalLenguage: $originalLenguage, overview: $overview, mediaType: $mediaType, releaseDate: $releaseDate, voteAverage: $voteAverage, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesImpl &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.originalLenguage, originalLenguage) ||
                other.originalLenguage == originalLenguage) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posterPath, title,
      originalLenguage, overview, mediaType, releaseDate, voteAverage, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesImplCopyWith<_$MoviesImpl> get copyWith =>
      __$$MoviesImplCopyWithImpl<_$MoviesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviesImplToJson(
      this,
    );
  }
}

abstract class _Movies extends Movies {
  factory _Movies(
      {@JsonKey(name: "poster_path") required final String posterPath,
      required final String title,
      @JsonKey(name: "original_language")
      required final String originalLenguage,
      required final String overview,
      @JsonKey(name: "media_type") required final String mediaType,
      @JsonKey(name: "release_date") required final String releaseDate,
      @JsonKey(name: "vote_average") required final double voteAverage,
      required final int id}) = _$MoviesImpl;
  _Movies._() : super._();

  factory _Movies.fromJson(Map<String, dynamic> json) = _$MoviesImpl.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String get posterPath;
  @override
  String get title;
  @override
  @JsonKey(name: "original_language")
  String get originalLenguage;
  @override
  String get overview;
  @override
  @JsonKey(name: "media_type")
  String get mediaType;
  @override
  @JsonKey(name: "release_date")
  String get releaseDate;
  @override
  @JsonKey(name: "vote_average")
  double get voteAverage;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$MoviesImplCopyWith<_$MoviesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MoviesLista _$MoviesListaFromJson(Map<String, dynamic> json) {
  return _MoviesLista.fromJson(json);
}

/// @nodoc
mixin _$MoviesLista {
  @JsonKey(name: "vote_average")
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String get releaseDate => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesListaCopyWith<MoviesLista> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesListaCopyWith<$Res> {
  factory $MoviesListaCopyWith(
          MoviesLista value, $Res Function(MoviesLista) then) =
      _$MoviesListaCopyWithImpl<$Res, MoviesLista>;
  @useResult
  $Res call(
      {@JsonKey(name: "vote_average") double voteAverage,
      @JsonKey(name: "poster_path") String posterPath,
      @JsonKey(name: "release_date") String releaseDate,
      String overview,
      String title});
}

/// @nodoc
class _$MoviesListaCopyWithImpl<$Res, $Val extends MoviesLista>
    implements $MoviesListaCopyWith<$Res> {
  _$MoviesListaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voteAverage = null,
    Object? posterPath = null,
    Object? releaseDate = null,
    Object? overview = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesListaImplCopyWith<$Res>
    implements $MoviesListaCopyWith<$Res> {
  factory _$$MoviesListaImplCopyWith(
          _$MoviesListaImpl value, $Res Function(_$MoviesListaImpl) then) =
      __$$MoviesListaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "vote_average") double voteAverage,
      @JsonKey(name: "poster_path") String posterPath,
      @JsonKey(name: "release_date") String releaseDate,
      String overview,
      String title});
}

/// @nodoc
class __$$MoviesListaImplCopyWithImpl<$Res>
    extends _$MoviesListaCopyWithImpl<$Res, _$MoviesListaImpl>
    implements _$$MoviesListaImplCopyWith<$Res> {
  __$$MoviesListaImplCopyWithImpl(
      _$MoviesListaImpl _value, $Res Function(_$MoviesListaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voteAverage = null,
    Object? posterPath = null,
    Object? releaseDate = null,
    Object? overview = null,
    Object? title = null,
  }) {
    return _then(_$MoviesListaImpl(
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoviesListaImpl extends _MoviesLista {
  _$MoviesListaImpl(
      {@JsonKey(name: "vote_average") required this.voteAverage,
      @JsonKey(name: "poster_path") required this.posterPath,
      @JsonKey(name: "release_date") required this.releaseDate,
      required this.overview,
      required this.title})
      : super._();

  factory _$MoviesListaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviesListaImplFromJson(json);

  @override
  @JsonKey(name: "vote_average")
  final double voteAverage;
  @override
  @JsonKey(name: "poster_path")
  final String posterPath;
  @override
  @JsonKey(name: "release_date")
  final String releaseDate;
  @override
  final String overview;
  @override
  final String title;

  @override
  String toString() {
    return 'MoviesLista(voteAverage: $voteAverage, posterPath: $posterPath, releaseDate: $releaseDate, overview: $overview, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesListaImpl &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, voteAverage, posterPath, releaseDate, overview, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesListaImplCopyWith<_$MoviesListaImpl> get copyWith =>
      __$$MoviesListaImplCopyWithImpl<_$MoviesListaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviesListaImplToJson(
      this,
    );
  }
}

abstract class _MoviesLista extends MoviesLista {
  factory _MoviesLista(
      {@JsonKey(name: "vote_average") required final double voteAverage,
      @JsonKey(name: "poster_path") required final String posterPath,
      @JsonKey(name: "release_date") required final String releaseDate,
      required final String overview,
      required final String title}) = _$MoviesListaImpl;
  _MoviesLista._() : super._();

  factory _MoviesLista.fromJson(Map<String, dynamic> json) =
      _$MoviesListaImpl.fromJson;

  @override
  @JsonKey(name: "vote_average")
  double get voteAverage;
  @override
  @JsonKey(name: "poster_path")
  String get posterPath;
  @override
  @JsonKey(name: "release_date")
  String get releaseDate;
  @override
  String get overview;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$MoviesListaImplCopyWith<_$MoviesListaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

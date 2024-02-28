// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_popular.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MoviesPopular _$MoviesPopularFromJson(Map<String, dynamic> json) {
  return _MoviesPopular.fromJson(json);
}

/// @nodoc
mixin _$MoviesPopular {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesPopularCopyWith<MoviesPopular> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesPopularCopyWith<$Res> {
  factory $MoviesPopularCopyWith(
          MoviesPopular value, $Res Function(MoviesPopular) then) =
      _$MoviesPopularCopyWithImpl<$Res, MoviesPopular>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "vote_average") double voteAverage,
      @JsonKey(name: "poster_path") String posterPath});
}

/// @nodoc
class _$MoviesPopularCopyWithImpl<$Res, $Val extends MoviesPopular>
    implements $MoviesPopularCopyWith<$Res> {
  _$MoviesPopularCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? voteAverage = null,
    Object? posterPath = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesPopularImplCopyWith<$Res>
    implements $MoviesPopularCopyWith<$Res> {
  factory _$$MoviesPopularImplCopyWith(
          _$MoviesPopularImpl value, $Res Function(_$MoviesPopularImpl) then) =
      __$$MoviesPopularImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "vote_average") double voteAverage,
      @JsonKey(name: "poster_path") String posterPath});
}

/// @nodoc
class __$$MoviesPopularImplCopyWithImpl<$Res>
    extends _$MoviesPopularCopyWithImpl<$Res, _$MoviesPopularImpl>
    implements _$$MoviesPopularImplCopyWith<$Res> {
  __$$MoviesPopularImplCopyWithImpl(
      _$MoviesPopularImpl _value, $Res Function(_$MoviesPopularImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? voteAverage = null,
    Object? posterPath = null,
  }) {
    return _then(_$MoviesPopularImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoviesPopularImpl extends _MoviesPopular {
  _$MoviesPopularImpl(
      {required this.name,
      @JsonKey(name: "vote_average") required this.voteAverage,
      @JsonKey(name: "poster_path") required this.posterPath})
      : super._();

  factory _$MoviesPopularImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviesPopularImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: "vote_average")
  final double voteAverage;
  @override
  @JsonKey(name: "poster_path")
  final String posterPath;

  @override
  String toString() {
    return 'MoviesPopular(name: $name, voteAverage: $voteAverage, posterPath: $posterPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesPopularImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, voteAverage, posterPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesPopularImplCopyWith<_$MoviesPopularImpl> get copyWith =>
      __$$MoviesPopularImplCopyWithImpl<_$MoviesPopularImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviesPopularImplToJson(
      this,
    );
  }
}

abstract class _MoviesPopular extends MoviesPopular {
  factory _MoviesPopular(
          {required final String name,
          @JsonKey(name: "vote_average") required final double voteAverage,
          @JsonKey(name: "poster_path") required final String posterPath}) =
      _$MoviesPopularImpl;
  _MoviesPopular._() : super._();

  factory _MoviesPopular.fromJson(Map<String, dynamic> json) =
      _$MoviesPopularImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: "vote_average")
  double get voteAverage;
  @override
  @JsonKey(name: "poster_path")
  String get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$MoviesPopularImplCopyWith<_$MoviesPopularImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

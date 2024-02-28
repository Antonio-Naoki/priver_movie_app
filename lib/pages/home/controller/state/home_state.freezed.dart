// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  FetchRecommendedState get fetchRecommendedState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({FetchRecommendedState fetchRecommendedState});

  $FetchRecommendedStateCopyWith<$Res> get fetchRecommendedState;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchRecommendedState = null,
  }) {
    return _then(_value.copyWith(
      fetchRecommendedState: null == fetchRecommendedState
          ? _value.fetchRecommendedState
          : fetchRecommendedState // ignore: cast_nullable_to_non_nullable
              as FetchRecommendedState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FetchRecommendedStateCopyWith<$Res> get fetchRecommendedState {
    return $FetchRecommendedStateCopyWith<$Res>(_value.fetchRecommendedState,
        (value) {
      return _then(_value.copyWith(fetchRecommendedState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FetchRecommendedState fetchRecommendedState});

  @override
  $FetchRecommendedStateCopyWith<$Res> get fetchRecommendedState;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchRecommendedState = null,
  }) {
    return _then(_$HomeStateImpl(
      fetchRecommendedState: null == fetchRecommendedState
          ? _value.fetchRecommendedState
          : fetchRecommendedState // ignore: cast_nullable_to_non_nullable
              as FetchRecommendedState,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.fetchRecommendedState = const FetchRecommendedState.loading()});

  @override
  @JsonKey()
  final FetchRecommendedState fetchRecommendedState;

  @override
  String toString() {
    return 'HomeState(fetchRecommendedState: $fetchRecommendedState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.fetchRecommendedState, fetchRecommendedState) ||
                other.fetchRecommendedState == fetchRecommendedState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchRecommendedState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final FetchRecommendedState fetchRecommendedState}) = _$HomeStateImpl;

  @override
  FetchRecommendedState get fetchRecommendedState;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchRecommendedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MoviesPopular> listRecommended) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<MoviesPopular> listRecommended)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MoviesPopular> listRecommended)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRecommendedStateLoading value) loading,
    required TResult Function(FetchRecommendedStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRecommendedStateLoading value)? loading,
    TResult? Function(FetchRecommendedStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRecommendedStateLoading value)? loading,
    TResult Function(FetchRecommendedStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchRecommendedStateCopyWith<$Res> {
  factory $FetchRecommendedStateCopyWith(FetchRecommendedState value,
          $Res Function(FetchRecommendedState) then) =
      _$FetchRecommendedStateCopyWithImpl<$Res, FetchRecommendedState>;
}

/// @nodoc
class _$FetchRecommendedStateCopyWithImpl<$Res,
        $Val extends FetchRecommendedState>
    implements $FetchRecommendedStateCopyWith<$Res> {
  _$FetchRecommendedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchRecommendedStateLoadingImplCopyWith<$Res> {
  factory _$$FetchRecommendedStateLoadingImplCopyWith(
          _$FetchRecommendedStateLoadingImpl value,
          $Res Function(_$FetchRecommendedStateLoadingImpl) then) =
      __$$FetchRecommendedStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchRecommendedStateLoadingImplCopyWithImpl<$Res>
    extends _$FetchRecommendedStateCopyWithImpl<$Res,
        _$FetchRecommendedStateLoadingImpl>
    implements _$$FetchRecommendedStateLoadingImplCopyWith<$Res> {
  __$$FetchRecommendedStateLoadingImplCopyWithImpl(
      _$FetchRecommendedStateLoadingImpl _value,
      $Res Function(_$FetchRecommendedStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchRecommendedStateLoadingImpl
    implements FetchRecommendedStateLoading {
  const _$FetchRecommendedStateLoadingImpl();

  @override
  String toString() {
    return 'FetchRecommendedState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRecommendedStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MoviesPopular> listRecommended) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<MoviesPopular> listRecommended)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MoviesPopular> listRecommended)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRecommendedStateLoading value) loading,
    required TResult Function(FetchRecommendedStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRecommendedStateLoading value)? loading,
    TResult? Function(FetchRecommendedStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRecommendedStateLoading value)? loading,
    TResult Function(FetchRecommendedStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FetchRecommendedStateLoading implements FetchRecommendedState {
  const factory FetchRecommendedStateLoading() =
      _$FetchRecommendedStateLoadingImpl;
}

/// @nodoc
abstract class _$$FetchRecommendedStateLoadedImplCopyWith<$Res> {
  factory _$$FetchRecommendedStateLoadedImplCopyWith(
          _$FetchRecommendedStateLoadedImpl value,
          $Res Function(_$FetchRecommendedStateLoadedImpl) then) =
      __$$FetchRecommendedStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MoviesPopular> listRecommended});
}

/// @nodoc
class __$$FetchRecommendedStateLoadedImplCopyWithImpl<$Res>
    extends _$FetchRecommendedStateCopyWithImpl<$Res,
        _$FetchRecommendedStateLoadedImpl>
    implements _$$FetchRecommendedStateLoadedImplCopyWith<$Res> {
  __$$FetchRecommendedStateLoadedImplCopyWithImpl(
      _$FetchRecommendedStateLoadedImpl _value,
      $Res Function(_$FetchRecommendedStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listRecommended = null,
  }) {
    return _then(_$FetchRecommendedStateLoadedImpl(
      null == listRecommended
          ? _value._listRecommended
          : listRecommended // ignore: cast_nullable_to_non_nullable
              as List<MoviesPopular>,
    ));
  }
}

/// @nodoc

class _$FetchRecommendedStateLoadedImpl implements FetchRecommendedStateLoaded {
  const _$FetchRecommendedStateLoadedImpl(
      final List<MoviesPopular> listRecommended)
      : _listRecommended = listRecommended;

  final List<MoviesPopular> _listRecommended;
  @override
  List<MoviesPopular> get listRecommended {
    if (_listRecommended is EqualUnmodifiableListView) return _listRecommended;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listRecommended);
  }

  @override
  String toString() {
    return 'FetchRecommendedState.loaded(listRecommended: $listRecommended)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRecommendedStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._listRecommended, _listRecommended));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listRecommended));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchRecommendedStateLoadedImplCopyWith<_$FetchRecommendedStateLoadedImpl>
      get copyWith => __$$FetchRecommendedStateLoadedImplCopyWithImpl<
          _$FetchRecommendedStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MoviesPopular> listRecommended) loaded,
  }) {
    return loaded(listRecommended);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<MoviesPopular> listRecommended)? loaded,
  }) {
    return loaded?.call(listRecommended);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MoviesPopular> listRecommended)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(listRecommended);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRecommendedStateLoading value) loading,
    required TResult Function(FetchRecommendedStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRecommendedStateLoading value)? loading,
    TResult? Function(FetchRecommendedStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRecommendedStateLoading value)? loading,
    TResult Function(FetchRecommendedStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FetchRecommendedStateLoaded implements FetchRecommendedState {
  const factory FetchRecommendedStateLoaded(
          final List<MoviesPopular> listRecommended) =
      _$FetchRecommendedStateLoadedImpl;

  List<MoviesPopular> get listRecommended;
  @JsonKey(ignore: true)
  _$$FetchRecommendedStateLoadedImplCopyWith<_$FetchRecommendedStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

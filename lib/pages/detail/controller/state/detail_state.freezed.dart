// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailState {
  FetchDetailState get fetchDetailState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailStateCopyWith<DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
  @useResult
  $Res call({FetchDetailState fetchDetailState});

  $FetchDetailStateCopyWith<$Res> get fetchDetailState;
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchDetailState = null,
  }) {
    return _then(_value.copyWith(
      fetchDetailState: null == fetchDetailState
          ? _value.fetchDetailState
          : fetchDetailState // ignore: cast_nullable_to_non_nullable
              as FetchDetailState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FetchDetailStateCopyWith<$Res> get fetchDetailState {
    return $FetchDetailStateCopyWith<$Res>(_value.fetchDetailState, (value) {
      return _then(_value.copyWith(fetchDetailState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailStateImplCopyWith<$Res>
    implements $DetailStateCopyWith<$Res> {
  factory _$$DetailStateImplCopyWith(
          _$DetailStateImpl value, $Res Function(_$DetailStateImpl) then) =
      __$$DetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FetchDetailState fetchDetailState});

  @override
  $FetchDetailStateCopyWith<$Res> get fetchDetailState;
}

/// @nodoc
class __$$DetailStateImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$DetailStateImpl>
    implements _$$DetailStateImplCopyWith<$Res> {
  __$$DetailStateImplCopyWithImpl(
      _$DetailStateImpl _value, $Res Function(_$DetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchDetailState = null,
  }) {
    return _then(_$DetailStateImpl(
      fetchDetailState: null == fetchDetailState
          ? _value.fetchDetailState
          : fetchDetailState // ignore: cast_nullable_to_non_nullable
              as FetchDetailState,
    ));
  }
}

/// @nodoc

class _$DetailStateImpl implements _DetailState {
  const _$DetailStateImpl(
      {this.fetchDetailState = const FetchDetailState.loading()});

  @override
  @JsonKey()
  final FetchDetailState fetchDetailState;

  @override
  String toString() {
    return 'DetailState(fetchDetailState: $fetchDetailState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailStateImpl &&
            (identical(other.fetchDetailState, fetchDetailState) ||
                other.fetchDetailState == fetchDetailState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchDetailState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      __$$DetailStateImplCopyWithImpl<_$DetailStateImpl>(this, _$identity);
}

abstract class _DetailState implements DetailState {
  const factory _DetailState({final FetchDetailState fetchDetailState}) =
      _$DetailStateImpl;

  @override
  FetchDetailState get fetchDetailState;
  @override
  @JsonKey(ignore: true)
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movies> listDetail) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movies> listDetail)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movies> listDetail)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchDetailStateLoading value) loading,
    required TResult Function(FetchDetailStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchDetailStateLoading value)? loading,
    TResult? Function(FetchDetailStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchDetailStateLoading value)? loading,
    TResult Function(FetchDetailStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchDetailStateCopyWith<$Res> {
  factory $FetchDetailStateCopyWith(
          FetchDetailState value, $Res Function(FetchDetailState) then) =
      _$FetchDetailStateCopyWithImpl<$Res, FetchDetailState>;
}

/// @nodoc
class _$FetchDetailStateCopyWithImpl<$Res, $Val extends FetchDetailState>
    implements $FetchDetailStateCopyWith<$Res> {
  _$FetchDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchDetailStateLoadingImplCopyWith<$Res> {
  factory _$$FetchDetailStateLoadingImplCopyWith(
          _$FetchDetailStateLoadingImpl value,
          $Res Function(_$FetchDetailStateLoadingImpl) then) =
      __$$FetchDetailStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDetailStateLoadingImplCopyWithImpl<$Res>
    extends _$FetchDetailStateCopyWithImpl<$Res, _$FetchDetailStateLoadingImpl>
    implements _$$FetchDetailStateLoadingImplCopyWith<$Res> {
  __$$FetchDetailStateLoadingImplCopyWithImpl(
      _$FetchDetailStateLoadingImpl _value,
      $Res Function(_$FetchDetailStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchDetailStateLoadingImpl implements FetchDetailStateLoading {
  const _$FetchDetailStateLoadingImpl();

  @override
  String toString() {
    return 'FetchDetailState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDetailStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movies> listDetail) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movies> listDetail)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movies> listDetail)? loaded,
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
    required TResult Function(FetchDetailStateLoading value) loading,
    required TResult Function(FetchDetailStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchDetailStateLoading value)? loading,
    TResult? Function(FetchDetailStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchDetailStateLoading value)? loading,
    TResult Function(FetchDetailStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FetchDetailStateLoading implements FetchDetailState {
  const factory FetchDetailStateLoading() = _$FetchDetailStateLoadingImpl;
}

/// @nodoc
abstract class _$$FetchDetailStateLoadedImplCopyWith<$Res> {
  factory _$$FetchDetailStateLoadedImplCopyWith(
          _$FetchDetailStateLoadedImpl value,
          $Res Function(_$FetchDetailStateLoadedImpl) then) =
      __$$FetchDetailStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Movies> listDetail});
}

/// @nodoc
class __$$FetchDetailStateLoadedImplCopyWithImpl<$Res>
    extends _$FetchDetailStateCopyWithImpl<$Res, _$FetchDetailStateLoadedImpl>
    implements _$$FetchDetailStateLoadedImplCopyWith<$Res> {
  __$$FetchDetailStateLoadedImplCopyWithImpl(
      _$FetchDetailStateLoadedImpl _value,
      $Res Function(_$FetchDetailStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listDetail = null,
  }) {
    return _then(_$FetchDetailStateLoadedImpl(
      null == listDetail
          ? _value._listDetail
          : listDetail // ignore: cast_nullable_to_non_nullable
              as List<Movies>,
    ));
  }
}

/// @nodoc

class _$FetchDetailStateLoadedImpl implements FetchDetailStateLoaded {
  const _$FetchDetailStateLoadedImpl(final List<Movies> listDetail)
      : _listDetail = listDetail;

  final List<Movies> _listDetail;
  @override
  List<Movies> get listDetail {
    if (_listDetail is EqualUnmodifiableListView) return _listDetail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listDetail);
  }

  @override
  String toString() {
    return 'FetchDetailState.loaded(listDetail: $listDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDetailStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._listDetail, _listDetail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listDetail));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchDetailStateLoadedImplCopyWith<_$FetchDetailStateLoadedImpl>
      get copyWith => __$$FetchDetailStateLoadedImplCopyWithImpl<
          _$FetchDetailStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movies> listDetail) loaded,
  }) {
    return loaded(listDetail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movies> listDetail)? loaded,
  }) {
    return loaded?.call(listDetail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movies> listDetail)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(listDetail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchDetailStateLoading value) loading,
    required TResult Function(FetchDetailStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchDetailStateLoading value)? loading,
    TResult? Function(FetchDetailStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchDetailStateLoading value)? loading,
    TResult Function(FetchDetailStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FetchDetailStateLoaded implements FetchDetailState {
  const factory FetchDetailStateLoaded(final List<Movies> listDetail) =
      _$FetchDetailStateLoadedImpl;

  List<Movies> get listDetail;
  @JsonKey(ignore: true)
  _$$FetchDetailStateLoadedImplCopyWith<_$FetchDetailStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

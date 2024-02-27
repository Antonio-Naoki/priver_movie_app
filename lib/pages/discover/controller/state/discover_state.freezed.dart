// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiscoverState {
  bool get isColor => throw _privateConstructorUsedError;
  FetchDiscoverState get fetchDiscoverState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscoverStateCopyWith<DiscoverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverStateCopyWith<$Res> {
  factory $DiscoverStateCopyWith(
          DiscoverState value, $Res Function(DiscoverState) then) =
      _$DiscoverStateCopyWithImpl<$Res, DiscoverState>;
  @useResult
  $Res call({bool isColor, FetchDiscoverState fetchDiscoverState});

  $FetchDiscoverStateCopyWith<$Res> get fetchDiscoverState;
}

/// @nodoc
class _$DiscoverStateCopyWithImpl<$Res, $Val extends DiscoverState>
    implements $DiscoverStateCopyWith<$Res> {
  _$DiscoverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isColor = null,
    Object? fetchDiscoverState = null,
  }) {
    return _then(_value.copyWith(
      isColor: null == isColor
          ? _value.isColor
          : isColor // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchDiscoverState: null == fetchDiscoverState
          ? _value.fetchDiscoverState
          : fetchDiscoverState // ignore: cast_nullable_to_non_nullable
              as FetchDiscoverState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FetchDiscoverStateCopyWith<$Res> get fetchDiscoverState {
    return $FetchDiscoverStateCopyWith<$Res>(_value.fetchDiscoverState,
        (value) {
      return _then(_value.copyWith(fetchDiscoverState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DiscoverStateImplCopyWith<$Res>
    implements $DiscoverStateCopyWith<$Res> {
  factory _$$DiscoverStateImplCopyWith(
          _$DiscoverStateImpl value, $Res Function(_$DiscoverStateImpl) then) =
      __$$DiscoverStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isColor, FetchDiscoverState fetchDiscoverState});

  @override
  $FetchDiscoverStateCopyWith<$Res> get fetchDiscoverState;
}

/// @nodoc
class __$$DiscoverStateImplCopyWithImpl<$Res>
    extends _$DiscoverStateCopyWithImpl<$Res, _$DiscoverStateImpl>
    implements _$$DiscoverStateImplCopyWith<$Res> {
  __$$DiscoverStateImplCopyWithImpl(
      _$DiscoverStateImpl _value, $Res Function(_$DiscoverStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isColor = null,
    Object? fetchDiscoverState = null,
  }) {
    return _then(_$DiscoverStateImpl(
      isColor: null == isColor
          ? _value.isColor
          : isColor // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchDiscoverState: null == fetchDiscoverState
          ? _value.fetchDiscoverState
          : fetchDiscoverState // ignore: cast_nullable_to_non_nullable
              as FetchDiscoverState,
    ));
  }
}

/// @nodoc

class _$DiscoverStateImpl implements _DiscoverState {
  const _$DiscoverStateImpl(
      {this.isColor = false,
      this.fetchDiscoverState = const FetchDiscoverState.loading()});

  @override
  @JsonKey()
  final bool isColor;
  @override
  @JsonKey()
  final FetchDiscoverState fetchDiscoverState;

  @override
  String toString() {
    return 'DiscoverState(isColor: $isColor, fetchDiscoverState: $fetchDiscoverState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverStateImpl &&
            (identical(other.isColor, isColor) || other.isColor == isColor) &&
            (identical(other.fetchDiscoverState, fetchDiscoverState) ||
                other.fetchDiscoverState == fetchDiscoverState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isColor, fetchDiscoverState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverStateImplCopyWith<_$DiscoverStateImpl> get copyWith =>
      __$$DiscoverStateImplCopyWithImpl<_$DiscoverStateImpl>(this, _$identity);
}

abstract class _DiscoverState implements DiscoverState {
  const factory _DiscoverState(
      {final bool isColor,
      final FetchDiscoverState fetchDiscoverState}) = _$DiscoverStateImpl;

  @override
  bool get isColor;
  @override
  FetchDiscoverState get fetchDiscoverState;
  @override
  @JsonKey(ignore: true)
  _$$DiscoverStateImplCopyWith<_$DiscoverStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchDiscoverState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movies> listDiscover) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movies> listDiscover)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movies> listDiscover)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchDiscoverStateLoading value) loading,
    required TResult Function(FetchDiscoverStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchDiscoverStateLoading value)? loading,
    TResult? Function(FetchDiscoverStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchDiscoverStateLoading value)? loading,
    TResult Function(FetchDiscoverStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchDiscoverStateCopyWith<$Res> {
  factory $FetchDiscoverStateCopyWith(
          FetchDiscoverState value, $Res Function(FetchDiscoverState) then) =
      _$FetchDiscoverStateCopyWithImpl<$Res, FetchDiscoverState>;
}

/// @nodoc
class _$FetchDiscoverStateCopyWithImpl<$Res, $Val extends FetchDiscoverState>
    implements $FetchDiscoverStateCopyWith<$Res> {
  _$FetchDiscoverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchDiscoverStateLoadingImplCopyWith<$Res> {
  factory _$$FetchDiscoverStateLoadingImplCopyWith(
          _$FetchDiscoverStateLoadingImpl value,
          $Res Function(_$FetchDiscoverStateLoadingImpl) then) =
      __$$FetchDiscoverStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDiscoverStateLoadingImplCopyWithImpl<$Res>
    extends _$FetchDiscoverStateCopyWithImpl<$Res,
        _$FetchDiscoverStateLoadingImpl>
    implements _$$FetchDiscoverStateLoadingImplCopyWith<$Res> {
  __$$FetchDiscoverStateLoadingImplCopyWithImpl(
      _$FetchDiscoverStateLoadingImpl _value,
      $Res Function(_$FetchDiscoverStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchDiscoverStateLoadingImpl implements FetchDiscoverStateLoading {
  const _$FetchDiscoverStateLoadingImpl();

  @override
  String toString() {
    return 'FetchDiscoverState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDiscoverStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movies> listDiscover) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movies> listDiscover)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movies> listDiscover)? loaded,
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
    required TResult Function(FetchDiscoverStateLoading value) loading,
    required TResult Function(FetchDiscoverStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchDiscoverStateLoading value)? loading,
    TResult? Function(FetchDiscoverStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchDiscoverStateLoading value)? loading,
    TResult Function(FetchDiscoverStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FetchDiscoverStateLoading implements FetchDiscoverState {
  const factory FetchDiscoverStateLoading() = _$FetchDiscoverStateLoadingImpl;
}

/// @nodoc
abstract class _$$FetchDiscoverStateLoadedImplCopyWith<$Res> {
  factory _$$FetchDiscoverStateLoadedImplCopyWith(
          _$FetchDiscoverStateLoadedImpl value,
          $Res Function(_$FetchDiscoverStateLoadedImpl) then) =
      __$$FetchDiscoverStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Movies> listDiscover});
}

/// @nodoc
class __$$FetchDiscoverStateLoadedImplCopyWithImpl<$Res>
    extends _$FetchDiscoverStateCopyWithImpl<$Res,
        _$FetchDiscoverStateLoadedImpl>
    implements _$$FetchDiscoverStateLoadedImplCopyWith<$Res> {
  __$$FetchDiscoverStateLoadedImplCopyWithImpl(
      _$FetchDiscoverStateLoadedImpl _value,
      $Res Function(_$FetchDiscoverStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listDiscover = null,
  }) {
    return _then(_$FetchDiscoverStateLoadedImpl(
      null == listDiscover
          ? _value._listDiscover
          : listDiscover // ignore: cast_nullable_to_non_nullable
              as List<Movies>,
    ));
  }
}

/// @nodoc

class _$FetchDiscoverStateLoadedImpl implements FetchDiscoverStateLoaded {
  const _$FetchDiscoverStateLoadedImpl(final List<Movies> listDiscover)
      : _listDiscover = listDiscover;

  final List<Movies> _listDiscover;
  @override
  List<Movies> get listDiscover {
    if (_listDiscover is EqualUnmodifiableListView) return _listDiscover;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listDiscover);
  }

  @override
  String toString() {
    return 'FetchDiscoverState.loaded(listDiscover: $listDiscover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDiscoverStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._listDiscover, _listDiscover));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listDiscover));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchDiscoverStateLoadedImplCopyWith<_$FetchDiscoverStateLoadedImpl>
      get copyWith => __$$FetchDiscoverStateLoadedImplCopyWithImpl<
          _$FetchDiscoverStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movies> listDiscover) loaded,
  }) {
    return loaded(listDiscover);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movies> listDiscover)? loaded,
  }) {
    return loaded?.call(listDiscover);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movies> listDiscover)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(listDiscover);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchDiscoverStateLoading value) loading,
    required TResult Function(FetchDiscoverStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchDiscoverStateLoading value)? loading,
    TResult? Function(FetchDiscoverStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchDiscoverStateLoading value)? loading,
    TResult Function(FetchDiscoverStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FetchDiscoverStateLoaded implements FetchDiscoverState {
  const factory FetchDiscoverStateLoaded(final List<Movies> listDiscover) =
      _$FetchDiscoverStateLoadedImpl;

  List<Movies> get listDiscover;
  @JsonKey(ignore: true)
  _$$FetchDiscoverStateLoadedImplCopyWith<_$FetchDiscoverStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

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
  String? get identifier => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? identifier) initial,
    required TResult Function(String? identifier) loading,
    required TResult Function(String? identifier) loaded,
    required TResult Function(String message, String? identifier) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? identifier)? initial,
    TResult? Function(String? identifier)? loading,
    TResult? Function(String? identifier)? loaded,
    TResult? Function(String message, String? identifier)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? identifier)? initial,
    TResult Function(String? identifier)? loading,
    TResult Function(String? identifier)? loaded,
    TResult Function(String message, String? identifier)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialHomeState value) initial,
    required TResult Function(LoadingDataHomeState value) loading,
    required TResult Function(LoadedIdentifierHomeState value) loaded,
    required TResult Function(ErrorHomeState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialHomeState value)? initial,
    TResult? Function(LoadingDataHomeState value)? loading,
    TResult? Function(LoadedIdentifierHomeState value)? loaded,
    TResult? Function(ErrorHomeState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHomeState value)? initial,
    TResult Function(LoadingDataHomeState value)? loading,
    TResult Function(LoadedIdentifierHomeState value)? loaded,
    TResult Function(ErrorHomeState value)? error,
    required TResult orElse(),
  }) =>
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
  $Res call({String? identifier});
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
    Object? identifier = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialHomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialHomeStateImplCopyWith(_$InitialHomeStateImpl value,
          $Res Function(_$InitialHomeStateImpl) then) =
      __$$InitialHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? identifier});
}

/// @nodoc
class __$$InitialHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialHomeStateImpl>
    implements _$$InitialHomeStateImplCopyWith<$Res> {
  __$$InitialHomeStateImplCopyWithImpl(_$InitialHomeStateImpl _value,
      $Res Function(_$InitialHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
  }) {
    return _then(_$InitialHomeStateImpl(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialHomeStateImpl implements InitialHomeState {
  const _$InitialHomeStateImpl({this.identifier});

  @override
  final String? identifier;

  @override
  String toString() {
    return 'HomeState.initial(identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialHomeStateImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialHomeStateImplCopyWith<_$InitialHomeStateImpl> get copyWith =>
      __$$InitialHomeStateImplCopyWithImpl<_$InitialHomeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? identifier) initial,
    required TResult Function(String? identifier) loading,
    required TResult Function(String? identifier) loaded,
    required TResult Function(String message, String? identifier) error,
  }) {
    return initial(identifier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? identifier)? initial,
    TResult? Function(String? identifier)? loading,
    TResult? Function(String? identifier)? loaded,
    TResult? Function(String message, String? identifier)? error,
  }) {
    return initial?.call(identifier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? identifier)? initial,
    TResult Function(String? identifier)? loading,
    TResult Function(String? identifier)? loaded,
    TResult Function(String message, String? identifier)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(identifier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialHomeState value) initial,
    required TResult Function(LoadingDataHomeState value) loading,
    required TResult Function(LoadedIdentifierHomeState value) loaded,
    required TResult Function(ErrorHomeState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialHomeState value)? initial,
    TResult? Function(LoadingDataHomeState value)? loading,
    TResult? Function(LoadedIdentifierHomeState value)? loaded,
    TResult? Function(ErrorHomeState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHomeState value)? initial,
    TResult Function(LoadingDataHomeState value)? loading,
    TResult Function(LoadedIdentifierHomeState value)? loaded,
    TResult Function(ErrorHomeState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialHomeState implements HomeState {
  const factory InitialHomeState({final String? identifier}) =
      _$InitialHomeStateImpl;

  @override
  String? get identifier;
  @override
  @JsonKey(ignore: true)
  _$$InitialHomeStateImplCopyWith<_$InitialHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingDataHomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$LoadingDataHomeStateImplCopyWith(_$LoadingDataHomeStateImpl value,
          $Res Function(_$LoadingDataHomeStateImpl) then) =
      __$$LoadingDataHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? identifier});
}

/// @nodoc
class __$$LoadingDataHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingDataHomeStateImpl>
    implements _$$LoadingDataHomeStateImplCopyWith<$Res> {
  __$$LoadingDataHomeStateImplCopyWithImpl(_$LoadingDataHomeStateImpl _value,
      $Res Function(_$LoadingDataHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
  }) {
    return _then(_$LoadingDataHomeStateImpl(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadingDataHomeStateImpl implements LoadingDataHomeState {
  const _$LoadingDataHomeStateImpl({this.identifier});

  @override
  final String? identifier;

  @override
  String toString() {
    return 'HomeState.loading(identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingDataHomeStateImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingDataHomeStateImplCopyWith<_$LoadingDataHomeStateImpl>
      get copyWith =>
          __$$LoadingDataHomeStateImplCopyWithImpl<_$LoadingDataHomeStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? identifier) initial,
    required TResult Function(String? identifier) loading,
    required TResult Function(String? identifier) loaded,
    required TResult Function(String message, String? identifier) error,
  }) {
    return loading(identifier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? identifier)? initial,
    TResult? Function(String? identifier)? loading,
    TResult? Function(String? identifier)? loaded,
    TResult? Function(String message, String? identifier)? error,
  }) {
    return loading?.call(identifier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? identifier)? initial,
    TResult Function(String? identifier)? loading,
    TResult Function(String? identifier)? loaded,
    TResult Function(String message, String? identifier)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(identifier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialHomeState value) initial,
    required TResult Function(LoadingDataHomeState value) loading,
    required TResult Function(LoadedIdentifierHomeState value) loaded,
    required TResult Function(ErrorHomeState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialHomeState value)? initial,
    TResult? Function(LoadingDataHomeState value)? loading,
    TResult? Function(LoadedIdentifierHomeState value)? loaded,
    TResult? Function(ErrorHomeState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHomeState value)? initial,
    TResult Function(LoadingDataHomeState value)? loading,
    TResult Function(LoadedIdentifierHomeState value)? loaded,
    TResult Function(ErrorHomeState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingDataHomeState implements HomeState {
  const factory LoadingDataHomeState({final String? identifier}) =
      _$LoadingDataHomeStateImpl;

  @override
  String? get identifier;
  @override
  @JsonKey(ignore: true)
  _$$LoadingDataHomeStateImplCopyWith<_$LoadingDataHomeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedIdentifierHomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$LoadedIdentifierHomeStateImplCopyWith(
          _$LoadedIdentifierHomeStateImpl value,
          $Res Function(_$LoadedIdentifierHomeStateImpl) then) =
      __$$LoadedIdentifierHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? identifier});
}

/// @nodoc
class __$$LoadedIdentifierHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadedIdentifierHomeStateImpl>
    implements _$$LoadedIdentifierHomeStateImplCopyWith<$Res> {
  __$$LoadedIdentifierHomeStateImplCopyWithImpl(
      _$LoadedIdentifierHomeStateImpl _value,
      $Res Function(_$LoadedIdentifierHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
  }) {
    return _then(_$LoadedIdentifierHomeStateImpl(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadedIdentifierHomeStateImpl implements LoadedIdentifierHomeState {
  const _$LoadedIdentifierHomeStateImpl({this.identifier});

  @override
  final String? identifier;

  @override
  String toString() {
    return 'HomeState.loaded(identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedIdentifierHomeStateImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedIdentifierHomeStateImplCopyWith<_$LoadedIdentifierHomeStateImpl>
      get copyWith => __$$LoadedIdentifierHomeStateImplCopyWithImpl<
          _$LoadedIdentifierHomeStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? identifier) initial,
    required TResult Function(String? identifier) loading,
    required TResult Function(String? identifier) loaded,
    required TResult Function(String message, String? identifier) error,
  }) {
    return loaded(identifier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? identifier)? initial,
    TResult? Function(String? identifier)? loading,
    TResult? Function(String? identifier)? loaded,
    TResult? Function(String message, String? identifier)? error,
  }) {
    return loaded?.call(identifier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? identifier)? initial,
    TResult Function(String? identifier)? loading,
    TResult Function(String? identifier)? loaded,
    TResult Function(String message, String? identifier)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(identifier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialHomeState value) initial,
    required TResult Function(LoadingDataHomeState value) loading,
    required TResult Function(LoadedIdentifierHomeState value) loaded,
    required TResult Function(ErrorHomeState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialHomeState value)? initial,
    TResult? Function(LoadingDataHomeState value)? loading,
    TResult? Function(LoadedIdentifierHomeState value)? loaded,
    TResult? Function(ErrorHomeState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHomeState value)? initial,
    TResult Function(LoadingDataHomeState value)? loading,
    TResult Function(LoadedIdentifierHomeState value)? loaded,
    TResult Function(ErrorHomeState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedIdentifierHomeState implements HomeState {
  const factory LoadedIdentifierHomeState({final String? identifier}) =
      _$LoadedIdentifierHomeStateImpl;

  @override
  String? get identifier;
  @override
  @JsonKey(ignore: true)
  _$$LoadedIdentifierHomeStateImplCopyWith<_$LoadedIdentifierHomeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorHomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$ErrorHomeStateImplCopyWith(_$ErrorHomeStateImpl value,
          $Res Function(_$ErrorHomeStateImpl) then) =
      __$$ErrorHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? identifier});
}

/// @nodoc
class __$$ErrorHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ErrorHomeStateImpl>
    implements _$$ErrorHomeStateImplCopyWith<$Res> {
  __$$ErrorHomeStateImplCopyWithImpl(
      _$ErrorHomeStateImpl _value, $Res Function(_$ErrorHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? identifier = freezed,
  }) {
    return _then(_$ErrorHomeStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorHomeStateImpl implements ErrorHomeState {
  const _$ErrorHomeStateImpl({required this.message, this.identifier});

  @override
  final String message;
  @override
  final String? identifier;

  @override
  String toString() {
    return 'HomeState.error(message: $message, identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorHomeStateImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorHomeStateImplCopyWith<_$ErrorHomeStateImpl> get copyWith =>
      __$$ErrorHomeStateImplCopyWithImpl<_$ErrorHomeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? identifier) initial,
    required TResult Function(String? identifier) loading,
    required TResult Function(String? identifier) loaded,
    required TResult Function(String message, String? identifier) error,
  }) {
    return error(message, identifier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? identifier)? initial,
    TResult? Function(String? identifier)? loading,
    TResult? Function(String? identifier)? loaded,
    TResult? Function(String message, String? identifier)? error,
  }) {
    return error?.call(message, identifier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? identifier)? initial,
    TResult Function(String? identifier)? loading,
    TResult Function(String? identifier)? loaded,
    TResult Function(String message, String? identifier)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, identifier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialHomeState value) initial,
    required TResult Function(LoadingDataHomeState value) loading,
    required TResult Function(LoadedIdentifierHomeState value) loaded,
    required TResult Function(ErrorHomeState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialHomeState value)? initial,
    TResult? Function(LoadingDataHomeState value)? loading,
    TResult? Function(LoadedIdentifierHomeState value)? loaded,
    TResult? Function(ErrorHomeState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHomeState value)? initial,
    TResult Function(LoadingDataHomeState value)? loading,
    TResult Function(LoadedIdentifierHomeState value)? loaded,
    TResult Function(ErrorHomeState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorHomeState implements HomeState {
  const factory ErrorHomeState(
      {required final String message,
      final String? identifier}) = _$ErrorHomeStateImpl;

  String get message;
  @override
  String? get identifier;
  @override
  @JsonKey(ignore: true)
  _$$ErrorHomeStateImplCopyWith<_$ErrorHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

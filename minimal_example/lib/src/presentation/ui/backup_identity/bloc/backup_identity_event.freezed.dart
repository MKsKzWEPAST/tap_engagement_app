// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backup_identity_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BackupIdentityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() backupIdentity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? backupIdentity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? backupIdentity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BackupIdentity value) backupIdentity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BackupIdentity value)? backupIdentity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BackupIdentity value)? backupIdentity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackupIdentityEventCopyWith<$Res> {
  factory $BackupIdentityEventCopyWith(
          BackupIdentityEvent value, $Res Function(BackupIdentityEvent) then) =
      _$BackupIdentityEventCopyWithImpl<$Res, BackupIdentityEvent>;
}

/// @nodoc
class _$BackupIdentityEventCopyWithImpl<$Res, $Val extends BackupIdentityEvent>
    implements $BackupIdentityEventCopyWith<$Res> {
  _$BackupIdentityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BackupIdentityImplCopyWith<$Res> {
  factory _$$BackupIdentityImplCopyWith(_$BackupIdentityImpl value,
          $Res Function(_$BackupIdentityImpl) then) =
      __$$BackupIdentityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackupIdentityImplCopyWithImpl<$Res>
    extends _$BackupIdentityEventCopyWithImpl<$Res, _$BackupIdentityImpl>
    implements _$$BackupIdentityImplCopyWith<$Res> {
  __$$BackupIdentityImplCopyWithImpl(
      _$BackupIdentityImpl _value, $Res Function(_$BackupIdentityImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackupIdentityImpl implements BackupIdentity {
  const _$BackupIdentityImpl();

  @override
  String toString() {
    return 'BackupIdentityEvent.backupIdentity()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BackupIdentityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() backupIdentity,
  }) {
    return backupIdentity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? backupIdentity,
  }) {
    return backupIdentity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? backupIdentity,
    required TResult orElse(),
  }) {
    if (backupIdentity != null) {
      return backupIdentity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BackupIdentity value) backupIdentity,
  }) {
    return backupIdentity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BackupIdentity value)? backupIdentity,
  }) {
    return backupIdentity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BackupIdentity value)? backupIdentity,
    required TResult orElse(),
  }) {
    if (backupIdentity != null) {
      return backupIdentity(this);
    }
    return orElse();
  }
}

abstract class BackupIdentity implements BackupIdentityEvent {
  const factory BackupIdentity() = _$BackupIdentityImpl;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SplashEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startDownload,
    required TResult Function(DownloadInfo downloadInfo) downloadProgressEvent,
    required TResult Function() cancelDownloadEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startDownload,
    TResult? Function(DownloadInfo downloadInfo)? downloadProgressEvent,
    TResult? Function()? cancelDownloadEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startDownload,
    TResult Function(DownloadInfo downloadInfo)? downloadProgressEvent,
    TResult Function()? cancelDownloadEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartDownloadSplashEvent value) startDownload,
    required TResult Function(DownloadProgressSplashEvent value)
        downloadProgressEvent,
    required TResult Function(CancelDownloadSplashEvent value)
        cancelDownloadEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartDownloadSplashEvent value)? startDownload,
    TResult? Function(DownloadProgressSplashEvent value)? downloadProgressEvent,
    TResult? Function(CancelDownloadSplashEvent value)? cancelDownloadEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartDownloadSplashEvent value)? startDownload,
    TResult Function(DownloadProgressSplashEvent value)? downloadProgressEvent,
    TResult Function(CancelDownloadSplashEvent value)? cancelDownloadEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res, SplashEvent>;
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res, $Val extends SplashEvent>
    implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartDownloadSplashEventImplCopyWith<$Res> {
  factory _$$StartDownloadSplashEventImplCopyWith(
          _$StartDownloadSplashEventImpl value,
          $Res Function(_$StartDownloadSplashEventImpl) then) =
      __$$StartDownloadSplashEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartDownloadSplashEventImplCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$StartDownloadSplashEventImpl>
    implements _$$StartDownloadSplashEventImplCopyWith<$Res> {
  __$$StartDownloadSplashEventImplCopyWithImpl(
      _$StartDownloadSplashEventImpl _value,
      $Res Function(_$StartDownloadSplashEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartDownloadSplashEventImpl implements StartDownloadSplashEvent {
  const _$StartDownloadSplashEventImpl();

  @override
  String toString() {
    return 'SplashEvent.startDownload()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartDownloadSplashEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startDownload,
    required TResult Function(DownloadInfo downloadInfo) downloadProgressEvent,
    required TResult Function() cancelDownloadEvent,
  }) {
    return startDownload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startDownload,
    TResult? Function(DownloadInfo downloadInfo)? downloadProgressEvent,
    TResult? Function()? cancelDownloadEvent,
  }) {
    return startDownload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startDownload,
    TResult Function(DownloadInfo downloadInfo)? downloadProgressEvent,
    TResult Function()? cancelDownloadEvent,
    required TResult orElse(),
  }) {
    if (startDownload != null) {
      return startDownload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartDownloadSplashEvent value) startDownload,
    required TResult Function(DownloadProgressSplashEvent value)
        downloadProgressEvent,
    required TResult Function(CancelDownloadSplashEvent value)
        cancelDownloadEvent,
  }) {
    return startDownload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartDownloadSplashEvent value)? startDownload,
    TResult? Function(DownloadProgressSplashEvent value)? downloadProgressEvent,
    TResult? Function(CancelDownloadSplashEvent value)? cancelDownloadEvent,
  }) {
    return startDownload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartDownloadSplashEvent value)? startDownload,
    TResult Function(DownloadProgressSplashEvent value)? downloadProgressEvent,
    TResult Function(CancelDownloadSplashEvent value)? cancelDownloadEvent,
    required TResult orElse(),
  }) {
    if (startDownload != null) {
      return startDownload(this);
    }
    return orElse();
  }
}

abstract class StartDownloadSplashEvent implements SplashEvent {
  const factory StartDownloadSplashEvent() = _$StartDownloadSplashEventImpl;
}

/// @nodoc
abstract class _$$DownloadProgressSplashEventImplCopyWith<$Res> {
  factory _$$DownloadProgressSplashEventImplCopyWith(
          _$DownloadProgressSplashEventImpl value,
          $Res Function(_$DownloadProgressSplashEventImpl) then) =
      __$$DownloadProgressSplashEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DownloadInfo downloadInfo});
}

/// @nodoc
class __$$DownloadProgressSplashEventImplCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$DownloadProgressSplashEventImpl>
    implements _$$DownloadProgressSplashEventImplCopyWith<$Res> {
  __$$DownloadProgressSplashEventImplCopyWithImpl(
      _$DownloadProgressSplashEventImpl _value,
      $Res Function(_$DownloadProgressSplashEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadInfo = null,
  }) {
    return _then(_$DownloadProgressSplashEventImpl(
      null == downloadInfo
          ? _value.downloadInfo
          : downloadInfo // ignore: cast_nullable_to_non_nullable
              as DownloadInfo,
    ));
  }
}

/// @nodoc

class _$DownloadProgressSplashEventImpl implements DownloadProgressSplashEvent {
  const _$DownloadProgressSplashEventImpl(this.downloadInfo);

  @override
  final DownloadInfo downloadInfo;

  @override
  String toString() {
    return 'SplashEvent.downloadProgressEvent(downloadInfo: $downloadInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadProgressSplashEventImpl &&
            (identical(other.downloadInfo, downloadInfo) ||
                other.downloadInfo == downloadInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, downloadInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadProgressSplashEventImplCopyWith<_$DownloadProgressSplashEventImpl>
      get copyWith => __$$DownloadProgressSplashEventImplCopyWithImpl<
          _$DownloadProgressSplashEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startDownload,
    required TResult Function(DownloadInfo downloadInfo) downloadProgressEvent,
    required TResult Function() cancelDownloadEvent,
  }) {
    return downloadProgressEvent(downloadInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startDownload,
    TResult? Function(DownloadInfo downloadInfo)? downloadProgressEvent,
    TResult? Function()? cancelDownloadEvent,
  }) {
    return downloadProgressEvent?.call(downloadInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startDownload,
    TResult Function(DownloadInfo downloadInfo)? downloadProgressEvent,
    TResult Function()? cancelDownloadEvent,
    required TResult orElse(),
  }) {
    if (downloadProgressEvent != null) {
      return downloadProgressEvent(downloadInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartDownloadSplashEvent value) startDownload,
    required TResult Function(DownloadProgressSplashEvent value)
        downloadProgressEvent,
    required TResult Function(CancelDownloadSplashEvent value)
        cancelDownloadEvent,
  }) {
    return downloadProgressEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartDownloadSplashEvent value)? startDownload,
    TResult? Function(DownloadProgressSplashEvent value)? downloadProgressEvent,
    TResult? Function(CancelDownloadSplashEvent value)? cancelDownloadEvent,
  }) {
    return downloadProgressEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartDownloadSplashEvent value)? startDownload,
    TResult Function(DownloadProgressSplashEvent value)? downloadProgressEvent,
    TResult Function(CancelDownloadSplashEvent value)? cancelDownloadEvent,
    required TResult orElse(),
  }) {
    if (downloadProgressEvent != null) {
      return downloadProgressEvent(this);
    }
    return orElse();
  }
}

abstract class DownloadProgressSplashEvent implements SplashEvent {
  const factory DownloadProgressSplashEvent(final DownloadInfo downloadInfo) =
      _$DownloadProgressSplashEventImpl;

  DownloadInfo get downloadInfo;
  @JsonKey(ignore: true)
  _$$DownloadProgressSplashEventImplCopyWith<_$DownloadProgressSplashEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelDownloadSplashEventImplCopyWith<$Res> {
  factory _$$CancelDownloadSplashEventImplCopyWith(
          _$CancelDownloadSplashEventImpl value,
          $Res Function(_$CancelDownloadSplashEventImpl) then) =
      __$$CancelDownloadSplashEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelDownloadSplashEventImplCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$CancelDownloadSplashEventImpl>
    implements _$$CancelDownloadSplashEventImplCopyWith<$Res> {
  __$$CancelDownloadSplashEventImplCopyWithImpl(
      _$CancelDownloadSplashEventImpl _value,
      $Res Function(_$CancelDownloadSplashEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelDownloadSplashEventImpl implements CancelDownloadSplashEvent {
  const _$CancelDownloadSplashEventImpl();

  @override
  String toString() {
    return 'SplashEvent.cancelDownloadEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelDownloadSplashEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startDownload,
    required TResult Function(DownloadInfo downloadInfo) downloadProgressEvent,
    required TResult Function() cancelDownloadEvent,
  }) {
    return cancelDownloadEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startDownload,
    TResult? Function(DownloadInfo downloadInfo)? downloadProgressEvent,
    TResult? Function()? cancelDownloadEvent,
  }) {
    return cancelDownloadEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startDownload,
    TResult Function(DownloadInfo downloadInfo)? downloadProgressEvent,
    TResult Function()? cancelDownloadEvent,
    required TResult orElse(),
  }) {
    if (cancelDownloadEvent != null) {
      return cancelDownloadEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartDownloadSplashEvent value) startDownload,
    required TResult Function(DownloadProgressSplashEvent value)
        downloadProgressEvent,
    required TResult Function(CancelDownloadSplashEvent value)
        cancelDownloadEvent,
  }) {
    return cancelDownloadEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartDownloadSplashEvent value)? startDownload,
    TResult? Function(DownloadProgressSplashEvent value)? downloadProgressEvent,
    TResult? Function(CancelDownloadSplashEvent value)? cancelDownloadEvent,
  }) {
    return cancelDownloadEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartDownloadSplashEvent value)? startDownload,
    TResult Function(DownloadProgressSplashEvent value)? downloadProgressEvent,
    TResult Function(CancelDownloadSplashEvent value)? cancelDownloadEvent,
    required TResult orElse(),
  }) {
    if (cancelDownloadEvent != null) {
      return cancelDownloadEvent(this);
    }
    return orElse();
  }
}

abstract class CancelDownloadSplashEvent implements SplashEvent {
  const factory CancelDownloadSplashEvent() = _$CancelDownloadSplashEventImpl;
}

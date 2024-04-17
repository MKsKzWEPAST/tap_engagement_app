// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'combined_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CombinedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() navigateToQrCodeScanner,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message)
        qrCodeScanned,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message) loaded,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
    required TResult Function(List<ClaimModel> claimList) loadedClaims,
    required TResult Function(ClaimModel claimModel) navigateToClaimDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? navigateToQrCodeScanner,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? authenticated,
    TResult? Function(List<ClaimModel> claimList)? loadedClaims,
    TResult? Function(ClaimModel claimModel)? navigateToClaimDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? navigateToQrCodeScanner,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    TResult Function(List<ClaimModel> claimList)? loadedClaims,
    TResult Function(ClaimModel claimModel)? navigateToClaimDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCombinedState value) initial,
    required TResult Function(LoadingCombinedState value) loading,
    required TResult Function(ProfileSelectedCombinedState value)
        profileSelected,
    required TResult Function(NavigateToQrCodeScannerCombinedState value)
        navigateToQrCodeScanner,
    required TResult Function(QrCodeScannedCombinedState value) qrCodeScanned,
    required TResult Function(LoadedCombinedState value) loaded,
    required TResult Function(ErrorCombinedState value) error,
    required TResult Function(AuthenticatedCombinedState value) authenticated,
    required TResult Function(LoadedDataCombinedState value) loadedClaims,
    required TResult Function(NavigateToClaimDetailCombinedState value)
        navigateToClaimDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCombinedState value)? initial,
    TResult? Function(LoadingCombinedState value)? loading,
    TResult? Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult? Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult? Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult? Function(LoadedCombinedState value)? loaded,
    TResult? Function(ErrorCombinedState value)? error,
    TResult? Function(AuthenticatedCombinedState value)? authenticated,
    TResult? Function(LoadedDataCombinedState value)? loadedClaims,
    TResult? Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCombinedState value)? initial,
    TResult Function(LoadingCombinedState value)? loading,
    TResult Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult Function(LoadedCombinedState value)? loaded,
    TResult Function(ErrorCombinedState value)? error,
    TResult Function(AuthenticatedCombinedState value)? authenticated,
    TResult Function(LoadedDataCombinedState value)? loadedClaims,
    TResult Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CombinedStateCopyWith<$Res> {
  factory $CombinedStateCopyWith(
          CombinedState value, $Res Function(CombinedState) then) =
      _$CombinedStateCopyWithImpl<$Res, CombinedState>;
}

/// @nodoc
class _$CombinedStateCopyWithImpl<$Res, $Val extends CombinedState>
    implements $CombinedStateCopyWith<$Res> {
  _$CombinedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitCombinedStateImplCopyWith<$Res> {
  factory _$$InitCombinedStateImplCopyWith(_$InitCombinedStateImpl value,
          $Res Function(_$InitCombinedStateImpl) then) =
      __$$InitCombinedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitCombinedStateImplCopyWithImpl<$Res>
    extends _$CombinedStateCopyWithImpl<$Res, _$InitCombinedStateImpl>
    implements _$$InitCombinedStateImplCopyWith<$Res> {
  __$$InitCombinedStateImplCopyWithImpl(_$InitCombinedStateImpl _value,
      $Res Function(_$InitCombinedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitCombinedStateImpl implements InitCombinedState {
  const _$InitCombinedStateImpl();

  @override
  String toString() {
    return 'CombinedState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitCombinedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() navigateToQrCodeScanner,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message)
        qrCodeScanned,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message) loaded,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
    required TResult Function(List<ClaimModel> claimList) loadedClaims,
    required TResult Function(ClaimModel claimModel) navigateToClaimDetail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? navigateToQrCodeScanner,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? authenticated,
    TResult? Function(List<ClaimModel> claimList)? loadedClaims,
    TResult? Function(ClaimModel claimModel)? navigateToClaimDetail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? navigateToQrCodeScanner,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    TResult Function(List<ClaimModel> claimList)? loadedClaims,
    TResult Function(ClaimModel claimModel)? navigateToClaimDetail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCombinedState value) initial,
    required TResult Function(LoadingCombinedState value) loading,
    required TResult Function(ProfileSelectedCombinedState value)
        profileSelected,
    required TResult Function(NavigateToQrCodeScannerCombinedState value)
        navigateToQrCodeScanner,
    required TResult Function(QrCodeScannedCombinedState value) qrCodeScanned,
    required TResult Function(LoadedCombinedState value) loaded,
    required TResult Function(ErrorCombinedState value) error,
    required TResult Function(AuthenticatedCombinedState value) authenticated,
    required TResult Function(LoadedDataCombinedState value) loadedClaims,
    required TResult Function(NavigateToClaimDetailCombinedState value)
        navigateToClaimDetail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCombinedState value)? initial,
    TResult? Function(LoadingCombinedState value)? loading,
    TResult? Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult? Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult? Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult? Function(LoadedCombinedState value)? loaded,
    TResult? Function(ErrorCombinedState value)? error,
    TResult? Function(AuthenticatedCombinedState value)? authenticated,
    TResult? Function(LoadedDataCombinedState value)? loadedClaims,
    TResult? Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCombinedState value)? initial,
    TResult Function(LoadingCombinedState value)? loading,
    TResult Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult Function(LoadedCombinedState value)? loaded,
    TResult Function(ErrorCombinedState value)? error,
    TResult Function(AuthenticatedCombinedState value)? authenticated,
    TResult Function(LoadedDataCombinedState value)? loadedClaims,
    TResult Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitCombinedState implements CombinedState {
  const factory InitCombinedState() = _$InitCombinedStateImpl;
}

/// @nodoc
abstract class _$$LoadingCombinedStateImplCopyWith<$Res> {
  factory _$$LoadingCombinedStateImplCopyWith(_$LoadingCombinedStateImpl value,
          $Res Function(_$LoadingCombinedStateImpl) then) =
      __$$LoadingCombinedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCombinedStateImplCopyWithImpl<$Res>
    extends _$CombinedStateCopyWithImpl<$Res, _$LoadingCombinedStateImpl>
    implements _$$LoadingCombinedStateImplCopyWith<$Res> {
  __$$LoadingCombinedStateImplCopyWithImpl(_$LoadingCombinedStateImpl _value,
      $Res Function(_$LoadingCombinedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingCombinedStateImpl implements LoadingCombinedState {
  const _$LoadingCombinedStateImpl();

  @override
  String toString() {
    return 'CombinedState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingCombinedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() navigateToQrCodeScanner,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message)
        qrCodeScanned,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message) loaded,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
    required TResult Function(List<ClaimModel> claimList) loadedClaims,
    required TResult Function(ClaimModel claimModel) navigateToClaimDetail,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? navigateToQrCodeScanner,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? authenticated,
    TResult? Function(List<ClaimModel> claimList)? loadedClaims,
    TResult? Function(ClaimModel claimModel)? navigateToClaimDetail,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? navigateToQrCodeScanner,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    TResult Function(List<ClaimModel> claimList)? loadedClaims,
    TResult Function(ClaimModel claimModel)? navigateToClaimDetail,
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
    required TResult Function(InitCombinedState value) initial,
    required TResult Function(LoadingCombinedState value) loading,
    required TResult Function(ProfileSelectedCombinedState value)
        profileSelected,
    required TResult Function(NavigateToQrCodeScannerCombinedState value)
        navigateToQrCodeScanner,
    required TResult Function(QrCodeScannedCombinedState value) qrCodeScanned,
    required TResult Function(LoadedCombinedState value) loaded,
    required TResult Function(ErrorCombinedState value) error,
    required TResult Function(AuthenticatedCombinedState value) authenticated,
    required TResult Function(LoadedDataCombinedState value) loadedClaims,
    required TResult Function(NavigateToClaimDetailCombinedState value)
        navigateToClaimDetail,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCombinedState value)? initial,
    TResult? Function(LoadingCombinedState value)? loading,
    TResult? Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult? Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult? Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult? Function(LoadedCombinedState value)? loaded,
    TResult? Function(ErrorCombinedState value)? error,
    TResult? Function(AuthenticatedCombinedState value)? authenticated,
    TResult? Function(LoadedDataCombinedState value)? loadedClaims,
    TResult? Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCombinedState value)? initial,
    TResult Function(LoadingCombinedState value)? loading,
    TResult Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult Function(LoadedCombinedState value)? loaded,
    TResult Function(ErrorCombinedState value)? error,
    TResult Function(AuthenticatedCombinedState value)? authenticated,
    TResult Function(LoadedDataCombinedState value)? loadedClaims,
    TResult Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingCombinedState implements CombinedState {
  const factory LoadingCombinedState() = _$LoadingCombinedStateImpl;
}

/// @nodoc
abstract class _$$ProfileSelectedCombinedStateImplCopyWith<$Res> {
  factory _$$ProfileSelectedCombinedStateImplCopyWith(
          _$ProfileSelectedCombinedStateImpl value,
          $Res Function(_$ProfileSelectedCombinedStateImpl) then) =
      __$$ProfileSelectedCombinedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SelectedProfile profile});
}

/// @nodoc
class __$$ProfileSelectedCombinedStateImplCopyWithImpl<$Res>
    extends _$CombinedStateCopyWithImpl<$Res,
        _$ProfileSelectedCombinedStateImpl>
    implements _$$ProfileSelectedCombinedStateImplCopyWith<$Res> {
  __$$ProfileSelectedCombinedStateImplCopyWithImpl(
      _$ProfileSelectedCombinedStateImpl _value,
      $Res Function(_$ProfileSelectedCombinedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$ProfileSelectedCombinedStateImpl(
      null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as SelectedProfile,
    ));
  }
}

/// @nodoc

class _$ProfileSelectedCombinedStateImpl
    implements ProfileSelectedCombinedState {
  const _$ProfileSelectedCombinedStateImpl(this.profile);

  @override
  final SelectedProfile profile;

  @override
  String toString() {
    return 'CombinedState.profileSelected(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileSelectedCombinedStateImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileSelectedCombinedStateImplCopyWith<
          _$ProfileSelectedCombinedStateImpl>
      get copyWith => __$$ProfileSelectedCombinedStateImplCopyWithImpl<
          _$ProfileSelectedCombinedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() navigateToQrCodeScanner,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message)
        qrCodeScanned,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message) loaded,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
    required TResult Function(List<ClaimModel> claimList) loadedClaims,
    required TResult Function(ClaimModel claimModel) navigateToClaimDetail,
  }) {
    return profileSelected(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? navigateToQrCodeScanner,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? authenticated,
    TResult? Function(List<ClaimModel> claimList)? loadedClaims,
    TResult? Function(ClaimModel claimModel)? navigateToClaimDetail,
  }) {
    return profileSelected?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? navigateToQrCodeScanner,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    TResult Function(List<ClaimModel> claimList)? loadedClaims,
    TResult Function(ClaimModel claimModel)? navigateToClaimDetail,
    required TResult orElse(),
  }) {
    if (profileSelected != null) {
      return profileSelected(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCombinedState value) initial,
    required TResult Function(LoadingCombinedState value) loading,
    required TResult Function(ProfileSelectedCombinedState value)
        profileSelected,
    required TResult Function(NavigateToQrCodeScannerCombinedState value)
        navigateToQrCodeScanner,
    required TResult Function(QrCodeScannedCombinedState value) qrCodeScanned,
    required TResult Function(LoadedCombinedState value) loaded,
    required TResult Function(ErrorCombinedState value) error,
    required TResult Function(AuthenticatedCombinedState value) authenticated,
    required TResult Function(LoadedDataCombinedState value) loadedClaims,
    required TResult Function(NavigateToClaimDetailCombinedState value)
        navigateToClaimDetail,
  }) {
    return profileSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCombinedState value)? initial,
    TResult? Function(LoadingCombinedState value)? loading,
    TResult? Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult? Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult? Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult? Function(LoadedCombinedState value)? loaded,
    TResult? Function(ErrorCombinedState value)? error,
    TResult? Function(AuthenticatedCombinedState value)? authenticated,
    TResult? Function(LoadedDataCombinedState value)? loadedClaims,
    TResult? Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
  }) {
    return profileSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCombinedState value)? initial,
    TResult Function(LoadingCombinedState value)? loading,
    TResult Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult Function(LoadedCombinedState value)? loaded,
    TResult Function(ErrorCombinedState value)? error,
    TResult Function(AuthenticatedCombinedState value)? authenticated,
    TResult Function(LoadedDataCombinedState value)? loadedClaims,
    TResult Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
    required TResult orElse(),
  }) {
    if (profileSelected != null) {
      return profileSelected(this);
    }
    return orElse();
  }
}

abstract class ProfileSelectedCombinedState implements CombinedState {
  const factory ProfileSelectedCombinedState(final SelectedProfile profile) =
      _$ProfileSelectedCombinedStateImpl;

  SelectedProfile get profile;
  @JsonKey(ignore: true)
  _$$ProfileSelectedCombinedStateImplCopyWith<
          _$ProfileSelectedCombinedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigateToQrCodeScannerCombinedStateImplCopyWith<$Res> {
  factory _$$NavigateToQrCodeScannerCombinedStateImplCopyWith(
          _$NavigateToQrCodeScannerCombinedStateImpl value,
          $Res Function(_$NavigateToQrCodeScannerCombinedStateImpl) then) =
      __$$NavigateToQrCodeScannerCombinedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateToQrCodeScannerCombinedStateImplCopyWithImpl<$Res>
    extends _$CombinedStateCopyWithImpl<$Res,
        _$NavigateToQrCodeScannerCombinedStateImpl>
    implements _$$NavigateToQrCodeScannerCombinedStateImplCopyWith<$Res> {
  __$$NavigateToQrCodeScannerCombinedStateImplCopyWithImpl(
      _$NavigateToQrCodeScannerCombinedStateImpl _value,
      $Res Function(_$NavigateToQrCodeScannerCombinedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavigateToQrCodeScannerCombinedStateImpl
    implements NavigateToQrCodeScannerCombinedState {
  const _$NavigateToQrCodeScannerCombinedStateImpl();

  @override
  String toString() {
    return 'CombinedState.navigateToQrCodeScanner()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToQrCodeScannerCombinedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() navigateToQrCodeScanner,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message)
        qrCodeScanned,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message) loaded,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
    required TResult Function(List<ClaimModel> claimList) loadedClaims,
    required TResult Function(ClaimModel claimModel) navigateToClaimDetail,
  }) {
    return navigateToQrCodeScanner();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? navigateToQrCodeScanner,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? authenticated,
    TResult? Function(List<ClaimModel> claimList)? loadedClaims,
    TResult? Function(ClaimModel claimModel)? navigateToClaimDetail,
  }) {
    return navigateToQrCodeScanner?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? navigateToQrCodeScanner,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    TResult Function(List<ClaimModel> claimList)? loadedClaims,
    TResult Function(ClaimModel claimModel)? navigateToClaimDetail,
    required TResult orElse(),
  }) {
    if (navigateToQrCodeScanner != null) {
      return navigateToQrCodeScanner();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCombinedState value) initial,
    required TResult Function(LoadingCombinedState value) loading,
    required TResult Function(ProfileSelectedCombinedState value)
        profileSelected,
    required TResult Function(NavigateToQrCodeScannerCombinedState value)
        navigateToQrCodeScanner,
    required TResult Function(QrCodeScannedCombinedState value) qrCodeScanned,
    required TResult Function(LoadedCombinedState value) loaded,
    required TResult Function(ErrorCombinedState value) error,
    required TResult Function(AuthenticatedCombinedState value) authenticated,
    required TResult Function(LoadedDataCombinedState value) loadedClaims,
    required TResult Function(NavigateToClaimDetailCombinedState value)
        navigateToClaimDetail,
  }) {
    return navigateToQrCodeScanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCombinedState value)? initial,
    TResult? Function(LoadingCombinedState value)? loading,
    TResult? Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult? Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult? Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult? Function(LoadedCombinedState value)? loaded,
    TResult? Function(ErrorCombinedState value)? error,
    TResult? Function(AuthenticatedCombinedState value)? authenticated,
    TResult? Function(LoadedDataCombinedState value)? loadedClaims,
    TResult? Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
  }) {
    return navigateToQrCodeScanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCombinedState value)? initial,
    TResult Function(LoadingCombinedState value)? loading,
    TResult Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult Function(LoadedCombinedState value)? loaded,
    TResult Function(ErrorCombinedState value)? error,
    TResult Function(AuthenticatedCombinedState value)? authenticated,
    TResult Function(LoadedDataCombinedState value)? loadedClaims,
    TResult Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
    required TResult orElse(),
  }) {
    if (navigateToQrCodeScanner != null) {
      return navigateToQrCodeScanner(this);
    }
    return orElse();
  }
}

abstract class NavigateToQrCodeScannerCombinedState implements CombinedState {
  const factory NavigateToQrCodeScannerCombinedState() =
      _$NavigateToQrCodeScannerCombinedStateImpl;
}

/// @nodoc
abstract class _$$QrCodeScannedCombinedStateImplCopyWith<$Res> {
  factory _$$QrCodeScannedCombinedStateImplCopyWith(
          _$QrCodeScannedCombinedStateImpl value,
          $Res Function(_$QrCodeScannedCombinedStateImpl) then) =
      __$$QrCodeScannedCombinedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Iden3MessageEntity<dynamic> iden3message});
}

/// @nodoc
class __$$QrCodeScannedCombinedStateImplCopyWithImpl<$Res>
    extends _$CombinedStateCopyWithImpl<$Res, _$QrCodeScannedCombinedStateImpl>
    implements _$$QrCodeScannedCombinedStateImplCopyWith<$Res> {
  __$$QrCodeScannedCombinedStateImplCopyWithImpl(
      _$QrCodeScannedCombinedStateImpl _value,
      $Res Function(_$QrCodeScannedCombinedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iden3message = null,
  }) {
    return _then(_$QrCodeScannedCombinedStateImpl(
      null == iden3message
          ? _value.iden3message
          : iden3message // ignore: cast_nullable_to_non_nullable
              as Iden3MessageEntity<dynamic>,
    ));
  }
}

/// @nodoc

class _$QrCodeScannedCombinedStateImpl implements QrCodeScannedCombinedState {
  const _$QrCodeScannedCombinedStateImpl(this.iden3message);

  @override
  final Iden3MessageEntity<dynamic> iden3message;

  @override
  String toString() {
    return 'CombinedState.qrCodeScanned(iden3message: $iden3message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrCodeScannedCombinedStateImpl &&
            (identical(other.iden3message, iden3message) ||
                other.iden3message == iden3message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iden3message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QrCodeScannedCombinedStateImplCopyWith<_$QrCodeScannedCombinedStateImpl>
      get copyWith => __$$QrCodeScannedCombinedStateImplCopyWithImpl<
          _$QrCodeScannedCombinedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() navigateToQrCodeScanner,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message)
        qrCodeScanned,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message) loaded,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
    required TResult Function(List<ClaimModel> claimList) loadedClaims,
    required TResult Function(ClaimModel claimModel) navigateToClaimDetail,
  }) {
    return qrCodeScanned(iden3message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? navigateToQrCodeScanner,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? authenticated,
    TResult? Function(List<ClaimModel> claimList)? loadedClaims,
    TResult? Function(ClaimModel claimModel)? navigateToClaimDetail,
  }) {
    return qrCodeScanned?.call(iden3message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? navigateToQrCodeScanner,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    TResult Function(List<ClaimModel> claimList)? loadedClaims,
    TResult Function(ClaimModel claimModel)? navigateToClaimDetail,
    required TResult orElse(),
  }) {
    if (qrCodeScanned != null) {
      return qrCodeScanned(iden3message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCombinedState value) initial,
    required TResult Function(LoadingCombinedState value) loading,
    required TResult Function(ProfileSelectedCombinedState value)
        profileSelected,
    required TResult Function(NavigateToQrCodeScannerCombinedState value)
        navigateToQrCodeScanner,
    required TResult Function(QrCodeScannedCombinedState value) qrCodeScanned,
    required TResult Function(LoadedCombinedState value) loaded,
    required TResult Function(ErrorCombinedState value) error,
    required TResult Function(AuthenticatedCombinedState value) authenticated,
    required TResult Function(LoadedDataCombinedState value) loadedClaims,
    required TResult Function(NavigateToClaimDetailCombinedState value)
        navigateToClaimDetail,
  }) {
    return qrCodeScanned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCombinedState value)? initial,
    TResult? Function(LoadingCombinedState value)? loading,
    TResult? Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult? Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult? Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult? Function(LoadedCombinedState value)? loaded,
    TResult? Function(ErrorCombinedState value)? error,
    TResult? Function(AuthenticatedCombinedState value)? authenticated,
    TResult? Function(LoadedDataCombinedState value)? loadedClaims,
    TResult? Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
  }) {
    return qrCodeScanned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCombinedState value)? initial,
    TResult Function(LoadingCombinedState value)? loading,
    TResult Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult Function(LoadedCombinedState value)? loaded,
    TResult Function(ErrorCombinedState value)? error,
    TResult Function(AuthenticatedCombinedState value)? authenticated,
    TResult Function(LoadedDataCombinedState value)? loadedClaims,
    TResult Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
    required TResult orElse(),
  }) {
    if (qrCodeScanned != null) {
      return qrCodeScanned(this);
    }
    return orElse();
  }
}

abstract class QrCodeScannedCombinedState implements CombinedState {
  const factory QrCodeScannedCombinedState(
          final Iden3MessageEntity<dynamic> iden3message) =
      _$QrCodeScannedCombinedStateImpl;

  Iden3MessageEntity<dynamic> get iden3message;
  @JsonKey(ignore: true)
  _$$QrCodeScannedCombinedStateImplCopyWith<_$QrCodeScannedCombinedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedCombinedStateImplCopyWith<$Res> {
  factory _$$LoadedCombinedStateImplCopyWith(_$LoadedCombinedStateImpl value,
          $Res Function(_$LoadedCombinedStateImpl) then) =
      __$$LoadedCombinedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Iden3MessageEntity<dynamic> iden3message});
}

/// @nodoc
class __$$LoadedCombinedStateImplCopyWithImpl<$Res>
    extends _$CombinedStateCopyWithImpl<$Res, _$LoadedCombinedStateImpl>
    implements _$$LoadedCombinedStateImplCopyWith<$Res> {
  __$$LoadedCombinedStateImplCopyWithImpl(_$LoadedCombinedStateImpl _value,
      $Res Function(_$LoadedCombinedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iden3message = null,
  }) {
    return _then(_$LoadedCombinedStateImpl(
      null == iden3message
          ? _value.iden3message
          : iden3message // ignore: cast_nullable_to_non_nullable
              as Iden3MessageEntity<dynamic>,
    ));
  }
}

/// @nodoc

class _$LoadedCombinedStateImpl implements LoadedCombinedState {
  const _$LoadedCombinedStateImpl(this.iden3message);

  @override
  final Iden3MessageEntity<dynamic> iden3message;

  @override
  String toString() {
    return 'CombinedState.loaded(iden3message: $iden3message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedCombinedStateImpl &&
            (identical(other.iden3message, iden3message) ||
                other.iden3message == iden3message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iden3message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCombinedStateImplCopyWith<_$LoadedCombinedStateImpl> get copyWith =>
      __$$LoadedCombinedStateImplCopyWithImpl<_$LoadedCombinedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() navigateToQrCodeScanner,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message)
        qrCodeScanned,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message) loaded,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
    required TResult Function(List<ClaimModel> claimList) loadedClaims,
    required TResult Function(ClaimModel claimModel) navigateToClaimDetail,
  }) {
    return loaded(iden3message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? navigateToQrCodeScanner,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? authenticated,
    TResult? Function(List<ClaimModel> claimList)? loadedClaims,
    TResult? Function(ClaimModel claimModel)? navigateToClaimDetail,
  }) {
    return loaded?.call(iden3message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? navigateToQrCodeScanner,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    TResult Function(List<ClaimModel> claimList)? loadedClaims,
    TResult Function(ClaimModel claimModel)? navigateToClaimDetail,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(iden3message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCombinedState value) initial,
    required TResult Function(LoadingCombinedState value) loading,
    required TResult Function(ProfileSelectedCombinedState value)
        profileSelected,
    required TResult Function(NavigateToQrCodeScannerCombinedState value)
        navigateToQrCodeScanner,
    required TResult Function(QrCodeScannedCombinedState value) qrCodeScanned,
    required TResult Function(LoadedCombinedState value) loaded,
    required TResult Function(ErrorCombinedState value) error,
    required TResult Function(AuthenticatedCombinedState value) authenticated,
    required TResult Function(LoadedDataCombinedState value) loadedClaims,
    required TResult Function(NavigateToClaimDetailCombinedState value)
        navigateToClaimDetail,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCombinedState value)? initial,
    TResult? Function(LoadingCombinedState value)? loading,
    TResult? Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult? Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult? Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult? Function(LoadedCombinedState value)? loaded,
    TResult? Function(ErrorCombinedState value)? error,
    TResult? Function(AuthenticatedCombinedState value)? authenticated,
    TResult? Function(LoadedDataCombinedState value)? loadedClaims,
    TResult? Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCombinedState value)? initial,
    TResult Function(LoadingCombinedState value)? loading,
    TResult Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult Function(LoadedCombinedState value)? loaded,
    TResult Function(ErrorCombinedState value)? error,
    TResult Function(AuthenticatedCombinedState value)? authenticated,
    TResult Function(LoadedDataCombinedState value)? loadedClaims,
    TResult Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedCombinedState implements CombinedState {
  const factory LoadedCombinedState(
          final Iden3MessageEntity<dynamic> iden3message) =
      _$LoadedCombinedStateImpl;

  Iden3MessageEntity<dynamic> get iden3message;
  @JsonKey(ignore: true)
  _$$LoadedCombinedStateImplCopyWith<_$LoadedCombinedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCombinedStateImplCopyWith<$Res> {
  factory _$$ErrorCombinedStateImplCopyWith(_$ErrorCombinedStateImpl value,
          $Res Function(_$ErrorCombinedStateImpl) then) =
      __$$ErrorCombinedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorCombinedStateImplCopyWithImpl<$Res>
    extends _$CombinedStateCopyWithImpl<$Res, _$ErrorCombinedStateImpl>
    implements _$$ErrorCombinedStateImplCopyWith<$Res> {
  __$$ErrorCombinedStateImplCopyWithImpl(_$ErrorCombinedStateImpl _value,
      $Res Function(_$ErrorCombinedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorCombinedStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorCombinedStateImpl implements ErrorCombinedState {
  const _$ErrorCombinedStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CombinedState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorCombinedStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCombinedStateImplCopyWith<_$ErrorCombinedStateImpl> get copyWith =>
      __$$ErrorCombinedStateImplCopyWithImpl<_$ErrorCombinedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() navigateToQrCodeScanner,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message)
        qrCodeScanned,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message) loaded,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
    required TResult Function(List<ClaimModel> claimList) loadedClaims,
    required TResult Function(ClaimModel claimModel) navigateToClaimDetail,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? navigateToQrCodeScanner,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? authenticated,
    TResult? Function(List<ClaimModel> claimList)? loadedClaims,
    TResult? Function(ClaimModel claimModel)? navigateToClaimDetail,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? navigateToQrCodeScanner,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    TResult Function(List<ClaimModel> claimList)? loadedClaims,
    TResult Function(ClaimModel claimModel)? navigateToClaimDetail,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCombinedState value) initial,
    required TResult Function(LoadingCombinedState value) loading,
    required TResult Function(ProfileSelectedCombinedState value)
        profileSelected,
    required TResult Function(NavigateToQrCodeScannerCombinedState value)
        navigateToQrCodeScanner,
    required TResult Function(QrCodeScannedCombinedState value) qrCodeScanned,
    required TResult Function(LoadedCombinedState value) loaded,
    required TResult Function(ErrorCombinedState value) error,
    required TResult Function(AuthenticatedCombinedState value) authenticated,
    required TResult Function(LoadedDataCombinedState value) loadedClaims,
    required TResult Function(NavigateToClaimDetailCombinedState value)
        navigateToClaimDetail,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCombinedState value)? initial,
    TResult? Function(LoadingCombinedState value)? loading,
    TResult? Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult? Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult? Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult? Function(LoadedCombinedState value)? loaded,
    TResult? Function(ErrorCombinedState value)? error,
    TResult? Function(AuthenticatedCombinedState value)? authenticated,
    TResult? Function(LoadedDataCombinedState value)? loadedClaims,
    TResult? Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCombinedState value)? initial,
    TResult Function(LoadingCombinedState value)? loading,
    TResult Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult Function(LoadedCombinedState value)? loaded,
    TResult Function(ErrorCombinedState value)? error,
    TResult Function(AuthenticatedCombinedState value)? authenticated,
    TResult Function(LoadedDataCombinedState value)? loadedClaims,
    TResult Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorCombinedState implements CombinedState {
  const factory ErrorCombinedState(final String message) =
      _$ErrorCombinedStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorCombinedStateImplCopyWith<_$ErrorCombinedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticatedCombinedStateImplCopyWith<$Res> {
  factory _$$AuthenticatedCombinedStateImplCopyWith(
          _$AuthenticatedCombinedStateImpl value,
          $Res Function(_$AuthenticatedCombinedStateImpl) then) =
      __$$AuthenticatedCombinedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedCombinedStateImplCopyWithImpl<$Res>
    extends _$CombinedStateCopyWithImpl<$Res, _$AuthenticatedCombinedStateImpl>
    implements _$$AuthenticatedCombinedStateImplCopyWith<$Res> {
  __$$AuthenticatedCombinedStateImplCopyWithImpl(
      _$AuthenticatedCombinedStateImpl _value,
      $Res Function(_$AuthenticatedCombinedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticatedCombinedStateImpl implements AuthenticatedCombinedState {
  const _$AuthenticatedCombinedStateImpl();

  @override
  String toString() {
    return 'CombinedState.authenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedCombinedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() navigateToQrCodeScanner,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message)
        qrCodeScanned,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message) loaded,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
    required TResult Function(List<ClaimModel> claimList) loadedClaims,
    required TResult Function(ClaimModel claimModel) navigateToClaimDetail,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? navigateToQrCodeScanner,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? authenticated,
    TResult? Function(List<ClaimModel> claimList)? loadedClaims,
    TResult? Function(ClaimModel claimModel)? navigateToClaimDetail,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? navigateToQrCodeScanner,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    TResult Function(List<ClaimModel> claimList)? loadedClaims,
    TResult Function(ClaimModel claimModel)? navigateToClaimDetail,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCombinedState value) initial,
    required TResult Function(LoadingCombinedState value) loading,
    required TResult Function(ProfileSelectedCombinedState value)
        profileSelected,
    required TResult Function(NavigateToQrCodeScannerCombinedState value)
        navigateToQrCodeScanner,
    required TResult Function(QrCodeScannedCombinedState value) qrCodeScanned,
    required TResult Function(LoadedCombinedState value) loaded,
    required TResult Function(ErrorCombinedState value) error,
    required TResult Function(AuthenticatedCombinedState value) authenticated,
    required TResult Function(LoadedDataCombinedState value) loadedClaims,
    required TResult Function(NavigateToClaimDetailCombinedState value)
        navigateToClaimDetail,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCombinedState value)? initial,
    TResult? Function(LoadingCombinedState value)? loading,
    TResult? Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult? Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult? Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult? Function(LoadedCombinedState value)? loaded,
    TResult? Function(ErrorCombinedState value)? error,
    TResult? Function(AuthenticatedCombinedState value)? authenticated,
    TResult? Function(LoadedDataCombinedState value)? loadedClaims,
    TResult? Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCombinedState value)? initial,
    TResult Function(LoadingCombinedState value)? loading,
    TResult Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult Function(LoadedCombinedState value)? loaded,
    TResult Function(ErrorCombinedState value)? error,
    TResult Function(AuthenticatedCombinedState value)? authenticated,
    TResult Function(LoadedDataCombinedState value)? loadedClaims,
    TResult Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedCombinedState implements CombinedState {
  const factory AuthenticatedCombinedState() = _$AuthenticatedCombinedStateImpl;
}

/// @nodoc
abstract class _$$LoadedDataCombinedStateImplCopyWith<$Res> {
  factory _$$LoadedDataCombinedStateImplCopyWith(
          _$LoadedDataCombinedStateImpl value,
          $Res Function(_$LoadedDataCombinedStateImpl) then) =
      __$$LoadedDataCombinedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ClaimModel> claimList});
}

/// @nodoc
class __$$LoadedDataCombinedStateImplCopyWithImpl<$Res>
    extends _$CombinedStateCopyWithImpl<$Res, _$LoadedDataCombinedStateImpl>
    implements _$$LoadedDataCombinedStateImplCopyWith<$Res> {
  __$$LoadedDataCombinedStateImplCopyWithImpl(
      _$LoadedDataCombinedStateImpl _value,
      $Res Function(_$LoadedDataCombinedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? claimList = null,
  }) {
    return _then(_$LoadedDataCombinedStateImpl(
      null == claimList
          ? _value._claimList
          : claimList // ignore: cast_nullable_to_non_nullable
              as List<ClaimModel>,
    ));
  }
}

/// @nodoc

class _$LoadedDataCombinedStateImpl implements LoadedDataCombinedState {
  const _$LoadedDataCombinedStateImpl(final List<ClaimModel> claimList)
      : _claimList = claimList;

  final List<ClaimModel> _claimList;
  @override
  List<ClaimModel> get claimList {
    if (_claimList is EqualUnmodifiableListView) return _claimList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_claimList);
  }

  @override
  String toString() {
    return 'CombinedState.loadedClaims(claimList: $claimList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedDataCombinedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._claimList, _claimList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_claimList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedDataCombinedStateImplCopyWith<_$LoadedDataCombinedStateImpl>
      get copyWith => __$$LoadedDataCombinedStateImplCopyWithImpl<
          _$LoadedDataCombinedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() navigateToQrCodeScanner,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message)
        qrCodeScanned,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message) loaded,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
    required TResult Function(List<ClaimModel> claimList) loadedClaims,
    required TResult Function(ClaimModel claimModel) navigateToClaimDetail,
  }) {
    return loadedClaims(claimList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? navigateToQrCodeScanner,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? authenticated,
    TResult? Function(List<ClaimModel> claimList)? loadedClaims,
    TResult? Function(ClaimModel claimModel)? navigateToClaimDetail,
  }) {
    return loadedClaims?.call(claimList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? navigateToQrCodeScanner,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    TResult Function(List<ClaimModel> claimList)? loadedClaims,
    TResult Function(ClaimModel claimModel)? navigateToClaimDetail,
    required TResult orElse(),
  }) {
    if (loadedClaims != null) {
      return loadedClaims(claimList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCombinedState value) initial,
    required TResult Function(LoadingCombinedState value) loading,
    required TResult Function(ProfileSelectedCombinedState value)
        profileSelected,
    required TResult Function(NavigateToQrCodeScannerCombinedState value)
        navigateToQrCodeScanner,
    required TResult Function(QrCodeScannedCombinedState value) qrCodeScanned,
    required TResult Function(LoadedCombinedState value) loaded,
    required TResult Function(ErrorCombinedState value) error,
    required TResult Function(AuthenticatedCombinedState value) authenticated,
    required TResult Function(LoadedDataCombinedState value) loadedClaims,
    required TResult Function(NavigateToClaimDetailCombinedState value)
        navigateToClaimDetail,
  }) {
    return loadedClaims(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCombinedState value)? initial,
    TResult? Function(LoadingCombinedState value)? loading,
    TResult? Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult? Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult? Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult? Function(LoadedCombinedState value)? loaded,
    TResult? Function(ErrorCombinedState value)? error,
    TResult? Function(AuthenticatedCombinedState value)? authenticated,
    TResult? Function(LoadedDataCombinedState value)? loadedClaims,
    TResult? Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
  }) {
    return loadedClaims?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCombinedState value)? initial,
    TResult Function(LoadingCombinedState value)? loading,
    TResult Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult Function(LoadedCombinedState value)? loaded,
    TResult Function(ErrorCombinedState value)? error,
    TResult Function(AuthenticatedCombinedState value)? authenticated,
    TResult Function(LoadedDataCombinedState value)? loadedClaims,
    TResult Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
    required TResult orElse(),
  }) {
    if (loadedClaims != null) {
      return loadedClaims(this);
    }
    return orElse();
  }
}

abstract class LoadedDataCombinedState implements CombinedState {
  const factory LoadedDataCombinedState(final List<ClaimModel> claimList) =
      _$LoadedDataCombinedStateImpl;

  List<ClaimModel> get claimList;
  @JsonKey(ignore: true)
  _$$LoadedDataCombinedStateImplCopyWith<_$LoadedDataCombinedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigateToClaimDetailCombinedStateImplCopyWith<$Res> {
  factory _$$NavigateToClaimDetailCombinedStateImplCopyWith(
          _$NavigateToClaimDetailCombinedStateImpl value,
          $Res Function(_$NavigateToClaimDetailCombinedStateImpl) then) =
      __$$NavigateToClaimDetailCombinedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClaimModel claimModel});
}

/// @nodoc
class __$$NavigateToClaimDetailCombinedStateImplCopyWithImpl<$Res>
    extends _$CombinedStateCopyWithImpl<$Res,
        _$NavigateToClaimDetailCombinedStateImpl>
    implements _$$NavigateToClaimDetailCombinedStateImplCopyWith<$Res> {
  __$$NavigateToClaimDetailCombinedStateImplCopyWithImpl(
      _$NavigateToClaimDetailCombinedStateImpl _value,
      $Res Function(_$NavigateToClaimDetailCombinedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? claimModel = null,
  }) {
    return _then(_$NavigateToClaimDetailCombinedStateImpl(
      null == claimModel
          ? _value.claimModel
          : claimModel // ignore: cast_nullable_to_non_nullable
              as ClaimModel,
    ));
  }
}

/// @nodoc

class _$NavigateToClaimDetailCombinedStateImpl
    implements NavigateToClaimDetailCombinedState {
  const _$NavigateToClaimDetailCombinedStateImpl(this.claimModel);

  @override
  final ClaimModel claimModel;

  @override
  String toString() {
    return 'CombinedState.navigateToClaimDetail(claimModel: $claimModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToClaimDetailCombinedStateImpl &&
            (identical(other.claimModel, claimModel) ||
                other.claimModel == claimModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, claimModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToClaimDetailCombinedStateImplCopyWith<
          _$NavigateToClaimDetailCombinedStateImpl>
      get copyWith => __$$NavigateToClaimDetailCombinedStateImplCopyWithImpl<
          _$NavigateToClaimDetailCombinedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() navigateToQrCodeScanner,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message)
        qrCodeScanned,
    required TResult Function(Iden3MessageEntity<dynamic> iden3message) loaded,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
    required TResult Function(List<ClaimModel> claimList) loadedClaims,
    required TResult Function(ClaimModel claimModel) navigateToClaimDetail,
  }) {
    return navigateToClaimDetail(claimModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? navigateToQrCodeScanner,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult? Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? authenticated,
    TResult? Function(List<ClaimModel> claimList)? loadedClaims,
    TResult? Function(ClaimModel claimModel)? navigateToClaimDetail,
  }) {
    return navigateToClaimDetail?.call(claimModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? navigateToQrCodeScanner,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? qrCodeScanned,
    TResult Function(Iden3MessageEntity<dynamic> iden3message)? loaded,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    TResult Function(List<ClaimModel> claimList)? loadedClaims,
    TResult Function(ClaimModel claimModel)? navigateToClaimDetail,
    required TResult orElse(),
  }) {
    if (navigateToClaimDetail != null) {
      return navigateToClaimDetail(claimModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCombinedState value) initial,
    required TResult Function(LoadingCombinedState value) loading,
    required TResult Function(ProfileSelectedCombinedState value)
        profileSelected,
    required TResult Function(NavigateToQrCodeScannerCombinedState value)
        navigateToQrCodeScanner,
    required TResult Function(QrCodeScannedCombinedState value) qrCodeScanned,
    required TResult Function(LoadedCombinedState value) loaded,
    required TResult Function(ErrorCombinedState value) error,
    required TResult Function(AuthenticatedCombinedState value) authenticated,
    required TResult Function(LoadedDataCombinedState value) loadedClaims,
    required TResult Function(NavigateToClaimDetailCombinedState value)
        navigateToClaimDetail,
  }) {
    return navigateToClaimDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCombinedState value)? initial,
    TResult? Function(LoadingCombinedState value)? loading,
    TResult? Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult? Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult? Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult? Function(LoadedCombinedState value)? loaded,
    TResult? Function(ErrorCombinedState value)? error,
    TResult? Function(AuthenticatedCombinedState value)? authenticated,
    TResult? Function(LoadedDataCombinedState value)? loadedClaims,
    TResult? Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
  }) {
    return navigateToClaimDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCombinedState value)? initial,
    TResult Function(LoadingCombinedState value)? loading,
    TResult Function(ProfileSelectedCombinedState value)? profileSelected,
    TResult Function(NavigateToQrCodeScannerCombinedState value)?
        navigateToQrCodeScanner,
    TResult Function(QrCodeScannedCombinedState value)? qrCodeScanned,
    TResult Function(LoadedCombinedState value)? loaded,
    TResult Function(ErrorCombinedState value)? error,
    TResult Function(AuthenticatedCombinedState value)? authenticated,
    TResult Function(LoadedDataCombinedState value)? loadedClaims,
    TResult Function(NavigateToClaimDetailCombinedState value)?
        navigateToClaimDetail,
    required TResult orElse(),
  }) {
    if (navigateToClaimDetail != null) {
      return navigateToClaimDetail(this);
    }
    return orElse();
  }
}

abstract class NavigateToClaimDetailCombinedState implements CombinedState {
  const factory NavigateToClaimDetailCombinedState(
      final ClaimModel claimModel) = _$NavigateToClaimDetailCombinedStateImpl;

  ClaimModel get claimModel;
  @JsonKey(ignore: true)
  _$$NavigateToClaimDetailCombinedStateImplCopyWith<
          _$NavigateToClaimDetailCombinedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

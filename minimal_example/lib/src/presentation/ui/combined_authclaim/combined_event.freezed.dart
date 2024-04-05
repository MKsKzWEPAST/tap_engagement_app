// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'combined_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CombinedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() clickScanQrCode,
    required TResult Function(String? response) onScanQrCodeResponse,
    required TResult Function() clickTapButton,
    required TResult Function(Iden3MessageEntity iden3message)
        fetchAndSaveClaims,
    required TResult Function(List<FilterEntity>? filters) getClaims,
    required TResult Function(List<String> ids) getClaimsByIds,
    required TResult Function(String id) removeClaim,
    required TResult Function(List<String> ids) removeClaims,
    required TResult Function() removeAllClaims,
    required TResult Function(
            String id,
            String? issuer,
            String? did,
            ClaimState? state,
            String? expiration,
            String? type,
            Map<String, dynamic>? data)
        updateClaim,
    required TResult Function(ClaimModel claimModel) onClickClaim,
    required TResult Function(bool? removed) onClaimDetailRemoveResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? clickScanQrCode,
    TResult? Function(String? response)? onScanQrCodeResponse,
    TResult? Function()? clickTapButton,
    TResult? Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult? Function(List<FilterEntity>? filters)? getClaims,
    TResult? Function(List<String> ids)? getClaimsByIds,
    TResult? Function(String id)? removeClaim,
    TResult? Function(List<String> ids)? removeClaims,
    TResult? Function()? removeAllClaims,
    TResult? Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult? Function(ClaimModel claimModel)? onClickClaim,
    TResult? Function(bool? removed)? onClaimDetailRemoveResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? clickScanQrCode,
    TResult Function(String? response)? onScanQrCodeResponse,
    TResult Function()? clickTapButton,
    TResult Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult Function(List<FilterEntity>? filters)? getClaims,
    TResult Function(List<String> ids)? getClaimsByIds,
    TResult Function(String id)? removeClaim,
    TResult Function(List<String> ids)? removeClaims,
    TResult Function()? removeAllClaims,
    TResult Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult Function(ClaimModel claimModel)? onClickClaim,
    TResult Function(bool? removed)? onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileSelectedEvent value) profileSelected,
    required TResult Function(ClickScanQrCodeEvent value) clickScanQrCode,
    required TResult Function(ScanQrCodeResponse value) onScanQrCodeResponse,
    required TResult Function(ClickTapButtonEvent value) clickTapButton,
    required TResult Function(FetchAndSaveClaimsEvent value) fetchAndSaveClaims,
    required TResult Function(GetClaimsEvent value) getClaims,
    required TResult Function(GetClaimsByIdsEvent value) getClaimsByIds,
    required TResult Function(RemoveClaimEvent value) removeClaim,
    required TResult Function(RemoveClaimsEvent value) removeClaims,
    required TResult Function(RemoveAllClaimsEvent value) removeAllClaims,
    required TResult Function(UpdateClaimEvent value) updateClaim,
    required TResult Function(OnClickClaim value) onClickClaim,
    required TResult Function(OnClaimDetailRemoveResponse value)
        onClaimDetailRemoveResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileSelectedEvent value)? profileSelected,
    TResult? Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult? Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult? Function(ClickTapButtonEvent value)? clickTapButton,
    TResult? Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult? Function(GetClaimsEvent value)? getClaims,
    TResult? Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult? Function(RemoveClaimEvent value)? removeClaim,
    TResult? Function(RemoveClaimsEvent value)? removeClaims,
    TResult? Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult? Function(UpdateClaimEvent value)? updateClaim,
    TResult? Function(OnClickClaim value)? onClickClaim,
    TResult? Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileSelectedEvent value)? profileSelected,
    TResult Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult Function(ClickTapButtonEvent value)? clickTapButton,
    TResult Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult Function(GetClaimsEvent value)? getClaims,
    TResult Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult Function(RemoveClaimEvent value)? removeClaim,
    TResult Function(RemoveClaimsEvent value)? removeClaims,
    TResult Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult Function(UpdateClaimEvent value)? updateClaim,
    TResult Function(OnClickClaim value)? onClickClaim,
    TResult Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CombinedEventCopyWith<$Res> {
  factory $CombinedEventCopyWith(
          CombinedEvent value, $Res Function(CombinedEvent) then) =
      _$CombinedEventCopyWithImpl<$Res, CombinedEvent>;
}

/// @nodoc
class _$CombinedEventCopyWithImpl<$Res, $Val extends CombinedEvent>
    implements $CombinedEventCopyWith<$Res> {
  _$CombinedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileSelectedEventImplCopyWith<$Res> {
  factory _$$ProfileSelectedEventImplCopyWith(_$ProfileSelectedEventImpl value,
          $Res Function(_$ProfileSelectedEventImpl) then) =
      __$$ProfileSelectedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SelectedProfile profile});
}

/// @nodoc
class __$$ProfileSelectedEventImplCopyWithImpl<$Res>
    extends _$CombinedEventCopyWithImpl<$Res, _$ProfileSelectedEventImpl>
    implements _$$ProfileSelectedEventImplCopyWith<$Res> {
  __$$ProfileSelectedEventImplCopyWithImpl(_$ProfileSelectedEventImpl _value,
      $Res Function(_$ProfileSelectedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$ProfileSelectedEventImpl(
      null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as SelectedProfile,
    ));
  }
}

/// @nodoc

class _$ProfileSelectedEventImpl implements ProfileSelectedEvent {
  const _$ProfileSelectedEventImpl(this.profile);

  @override
  final SelectedProfile profile;

  @override
  String toString() {
    return 'CombinedEvent.profileSelected(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileSelectedEventImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileSelectedEventImplCopyWith<_$ProfileSelectedEventImpl>
      get copyWith =>
          __$$ProfileSelectedEventImplCopyWithImpl<_$ProfileSelectedEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() clickScanQrCode,
    required TResult Function(String? response) onScanQrCodeResponse,
    required TResult Function() clickTapButton,
    required TResult Function(Iden3MessageEntity iden3message)
        fetchAndSaveClaims,
    required TResult Function(List<FilterEntity>? filters) getClaims,
    required TResult Function(List<String> ids) getClaimsByIds,
    required TResult Function(String id) removeClaim,
    required TResult Function(List<String> ids) removeClaims,
    required TResult Function() removeAllClaims,
    required TResult Function(
            String id,
            String? issuer,
            String? did,
            ClaimState? state,
            String? expiration,
            String? type,
            Map<String, dynamic>? data)
        updateClaim,
    required TResult Function(ClaimModel claimModel) onClickClaim,
    required TResult Function(bool? removed) onClaimDetailRemoveResponse,
  }) {
    return profileSelected(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? clickScanQrCode,
    TResult? Function(String? response)? onScanQrCodeResponse,
    TResult? Function()? clickTapButton,
    TResult? Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult? Function(List<FilterEntity>? filters)? getClaims,
    TResult? Function(List<String> ids)? getClaimsByIds,
    TResult? Function(String id)? removeClaim,
    TResult? Function(List<String> ids)? removeClaims,
    TResult? Function()? removeAllClaims,
    TResult? Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult? Function(ClaimModel claimModel)? onClickClaim,
    TResult? Function(bool? removed)? onClaimDetailRemoveResponse,
  }) {
    return profileSelected?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? clickScanQrCode,
    TResult Function(String? response)? onScanQrCodeResponse,
    TResult Function()? clickTapButton,
    TResult Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult Function(List<FilterEntity>? filters)? getClaims,
    TResult Function(List<String> ids)? getClaimsByIds,
    TResult Function(String id)? removeClaim,
    TResult Function(List<String> ids)? removeClaims,
    TResult Function()? removeAllClaims,
    TResult Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult Function(ClaimModel claimModel)? onClickClaim,
    TResult Function(bool? removed)? onClaimDetailRemoveResponse,
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
    required TResult Function(ProfileSelectedEvent value) profileSelected,
    required TResult Function(ClickScanQrCodeEvent value) clickScanQrCode,
    required TResult Function(ScanQrCodeResponse value) onScanQrCodeResponse,
    required TResult Function(ClickTapButtonEvent value) clickTapButton,
    required TResult Function(FetchAndSaveClaimsEvent value) fetchAndSaveClaims,
    required TResult Function(GetClaimsEvent value) getClaims,
    required TResult Function(GetClaimsByIdsEvent value) getClaimsByIds,
    required TResult Function(RemoveClaimEvent value) removeClaim,
    required TResult Function(RemoveClaimsEvent value) removeClaims,
    required TResult Function(RemoveAllClaimsEvent value) removeAllClaims,
    required TResult Function(UpdateClaimEvent value) updateClaim,
    required TResult Function(OnClickClaim value) onClickClaim,
    required TResult Function(OnClaimDetailRemoveResponse value)
        onClaimDetailRemoveResponse,
  }) {
    return profileSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileSelectedEvent value)? profileSelected,
    TResult? Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult? Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult? Function(ClickTapButtonEvent value)? clickTapButton,
    TResult? Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult? Function(GetClaimsEvent value)? getClaims,
    TResult? Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult? Function(RemoveClaimEvent value)? removeClaim,
    TResult? Function(RemoveClaimsEvent value)? removeClaims,
    TResult? Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult? Function(UpdateClaimEvent value)? updateClaim,
    TResult? Function(OnClickClaim value)? onClickClaim,
    TResult? Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
  }) {
    return profileSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileSelectedEvent value)? profileSelected,
    TResult Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult Function(ClickTapButtonEvent value)? clickTapButton,
    TResult Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult Function(GetClaimsEvent value)? getClaims,
    TResult Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult Function(RemoveClaimEvent value)? removeClaim,
    TResult Function(RemoveClaimsEvent value)? removeClaims,
    TResult Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult Function(UpdateClaimEvent value)? updateClaim,
    TResult Function(OnClickClaim value)? onClickClaim,
    TResult Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (profileSelected != null) {
      return profileSelected(this);
    }
    return orElse();
  }
}

abstract class ProfileSelectedEvent implements CombinedEvent {
  const factory ProfileSelectedEvent(final SelectedProfile profile) =
      _$ProfileSelectedEventImpl;

  SelectedProfile get profile;
  @JsonKey(ignore: true)
  _$$ProfileSelectedEventImplCopyWith<_$ProfileSelectedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClickScanQrCodeEventImplCopyWith<$Res> {
  factory _$$ClickScanQrCodeEventImplCopyWith(_$ClickScanQrCodeEventImpl value,
          $Res Function(_$ClickScanQrCodeEventImpl) then) =
      __$$ClickScanQrCodeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClickScanQrCodeEventImplCopyWithImpl<$Res>
    extends _$CombinedEventCopyWithImpl<$Res, _$ClickScanQrCodeEventImpl>
    implements _$$ClickScanQrCodeEventImplCopyWith<$Res> {
  __$$ClickScanQrCodeEventImplCopyWithImpl(_$ClickScanQrCodeEventImpl _value,
      $Res Function(_$ClickScanQrCodeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClickScanQrCodeEventImpl implements ClickScanQrCodeEvent {
  const _$ClickScanQrCodeEventImpl();

  @override
  String toString() {
    return 'CombinedEvent.clickScanQrCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClickScanQrCodeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() clickScanQrCode,
    required TResult Function(String? response) onScanQrCodeResponse,
    required TResult Function() clickTapButton,
    required TResult Function(Iden3MessageEntity iden3message)
        fetchAndSaveClaims,
    required TResult Function(List<FilterEntity>? filters) getClaims,
    required TResult Function(List<String> ids) getClaimsByIds,
    required TResult Function(String id) removeClaim,
    required TResult Function(List<String> ids) removeClaims,
    required TResult Function() removeAllClaims,
    required TResult Function(
            String id,
            String? issuer,
            String? did,
            ClaimState? state,
            String? expiration,
            String? type,
            Map<String, dynamic>? data)
        updateClaim,
    required TResult Function(ClaimModel claimModel) onClickClaim,
    required TResult Function(bool? removed) onClaimDetailRemoveResponse,
  }) {
    return clickScanQrCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? clickScanQrCode,
    TResult? Function(String? response)? onScanQrCodeResponse,
    TResult? Function()? clickTapButton,
    TResult? Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult? Function(List<FilterEntity>? filters)? getClaims,
    TResult? Function(List<String> ids)? getClaimsByIds,
    TResult? Function(String id)? removeClaim,
    TResult? Function(List<String> ids)? removeClaims,
    TResult? Function()? removeAllClaims,
    TResult? Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult? Function(ClaimModel claimModel)? onClickClaim,
    TResult? Function(bool? removed)? onClaimDetailRemoveResponse,
  }) {
    return clickScanQrCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? clickScanQrCode,
    TResult Function(String? response)? onScanQrCodeResponse,
    TResult Function()? clickTapButton,
    TResult Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult Function(List<FilterEntity>? filters)? getClaims,
    TResult Function(List<String> ids)? getClaimsByIds,
    TResult Function(String id)? removeClaim,
    TResult Function(List<String> ids)? removeClaims,
    TResult Function()? removeAllClaims,
    TResult Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult Function(ClaimModel claimModel)? onClickClaim,
    TResult Function(bool? removed)? onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (clickScanQrCode != null) {
      return clickScanQrCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileSelectedEvent value) profileSelected,
    required TResult Function(ClickScanQrCodeEvent value) clickScanQrCode,
    required TResult Function(ScanQrCodeResponse value) onScanQrCodeResponse,
    required TResult Function(ClickTapButtonEvent value) clickTapButton,
    required TResult Function(FetchAndSaveClaimsEvent value) fetchAndSaveClaims,
    required TResult Function(GetClaimsEvent value) getClaims,
    required TResult Function(GetClaimsByIdsEvent value) getClaimsByIds,
    required TResult Function(RemoveClaimEvent value) removeClaim,
    required TResult Function(RemoveClaimsEvent value) removeClaims,
    required TResult Function(RemoveAllClaimsEvent value) removeAllClaims,
    required TResult Function(UpdateClaimEvent value) updateClaim,
    required TResult Function(OnClickClaim value) onClickClaim,
    required TResult Function(OnClaimDetailRemoveResponse value)
        onClaimDetailRemoveResponse,
  }) {
    return clickScanQrCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileSelectedEvent value)? profileSelected,
    TResult? Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult? Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult? Function(ClickTapButtonEvent value)? clickTapButton,
    TResult? Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult? Function(GetClaimsEvent value)? getClaims,
    TResult? Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult? Function(RemoveClaimEvent value)? removeClaim,
    TResult? Function(RemoveClaimsEvent value)? removeClaims,
    TResult? Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult? Function(UpdateClaimEvent value)? updateClaim,
    TResult? Function(OnClickClaim value)? onClickClaim,
    TResult? Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
  }) {
    return clickScanQrCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileSelectedEvent value)? profileSelected,
    TResult Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult Function(ClickTapButtonEvent value)? clickTapButton,
    TResult Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult Function(GetClaimsEvent value)? getClaims,
    TResult Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult Function(RemoveClaimEvent value)? removeClaim,
    TResult Function(RemoveClaimsEvent value)? removeClaims,
    TResult Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult Function(UpdateClaimEvent value)? updateClaim,
    TResult Function(OnClickClaim value)? onClickClaim,
    TResult Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (clickScanQrCode != null) {
      return clickScanQrCode(this);
    }
    return orElse();
  }
}

abstract class ClickScanQrCodeEvent implements CombinedEvent {
  const factory ClickScanQrCodeEvent() = _$ClickScanQrCodeEventImpl;
}

/// @nodoc
abstract class _$$ScanQrCodeResponseImplCopyWith<$Res> {
  factory _$$ScanQrCodeResponseImplCopyWith(_$ScanQrCodeResponseImpl value,
          $Res Function(_$ScanQrCodeResponseImpl) then) =
      __$$ScanQrCodeResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? response});
}

/// @nodoc
class __$$ScanQrCodeResponseImplCopyWithImpl<$Res>
    extends _$CombinedEventCopyWithImpl<$Res, _$ScanQrCodeResponseImpl>
    implements _$$ScanQrCodeResponseImplCopyWith<$Res> {
  __$$ScanQrCodeResponseImplCopyWithImpl(_$ScanQrCodeResponseImpl _value,
      $Res Function(_$ScanQrCodeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$ScanQrCodeResponseImpl(
      freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ScanQrCodeResponseImpl implements ScanQrCodeResponse {
  const _$ScanQrCodeResponseImpl(this.response);

  @override
  final String? response;

  @override
  String toString() {
    return 'CombinedEvent.onScanQrCodeResponse(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanQrCodeResponseImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanQrCodeResponseImplCopyWith<_$ScanQrCodeResponseImpl> get copyWith =>
      __$$ScanQrCodeResponseImplCopyWithImpl<_$ScanQrCodeResponseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() clickScanQrCode,
    required TResult Function(String? response) onScanQrCodeResponse,
    required TResult Function() clickTapButton,
    required TResult Function(Iden3MessageEntity iden3message)
        fetchAndSaveClaims,
    required TResult Function(List<FilterEntity>? filters) getClaims,
    required TResult Function(List<String> ids) getClaimsByIds,
    required TResult Function(String id) removeClaim,
    required TResult Function(List<String> ids) removeClaims,
    required TResult Function() removeAllClaims,
    required TResult Function(
            String id,
            String? issuer,
            String? did,
            ClaimState? state,
            String? expiration,
            String? type,
            Map<String, dynamic>? data)
        updateClaim,
    required TResult Function(ClaimModel claimModel) onClickClaim,
    required TResult Function(bool? removed) onClaimDetailRemoveResponse,
  }) {
    return onScanQrCodeResponse(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? clickScanQrCode,
    TResult? Function(String? response)? onScanQrCodeResponse,
    TResult? Function()? clickTapButton,
    TResult? Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult? Function(List<FilterEntity>? filters)? getClaims,
    TResult? Function(List<String> ids)? getClaimsByIds,
    TResult? Function(String id)? removeClaim,
    TResult? Function(List<String> ids)? removeClaims,
    TResult? Function()? removeAllClaims,
    TResult? Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult? Function(ClaimModel claimModel)? onClickClaim,
    TResult? Function(bool? removed)? onClaimDetailRemoveResponse,
  }) {
    return onScanQrCodeResponse?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? clickScanQrCode,
    TResult Function(String? response)? onScanQrCodeResponse,
    TResult Function()? clickTapButton,
    TResult Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult Function(List<FilterEntity>? filters)? getClaims,
    TResult Function(List<String> ids)? getClaimsByIds,
    TResult Function(String id)? removeClaim,
    TResult Function(List<String> ids)? removeClaims,
    TResult Function()? removeAllClaims,
    TResult Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult Function(ClaimModel claimModel)? onClickClaim,
    TResult Function(bool? removed)? onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (onScanQrCodeResponse != null) {
      return onScanQrCodeResponse(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileSelectedEvent value) profileSelected,
    required TResult Function(ClickScanQrCodeEvent value) clickScanQrCode,
    required TResult Function(ScanQrCodeResponse value) onScanQrCodeResponse,
    required TResult Function(ClickTapButtonEvent value) clickTapButton,
    required TResult Function(FetchAndSaveClaimsEvent value) fetchAndSaveClaims,
    required TResult Function(GetClaimsEvent value) getClaims,
    required TResult Function(GetClaimsByIdsEvent value) getClaimsByIds,
    required TResult Function(RemoveClaimEvent value) removeClaim,
    required TResult Function(RemoveClaimsEvent value) removeClaims,
    required TResult Function(RemoveAllClaimsEvent value) removeAllClaims,
    required TResult Function(UpdateClaimEvent value) updateClaim,
    required TResult Function(OnClickClaim value) onClickClaim,
    required TResult Function(OnClaimDetailRemoveResponse value)
        onClaimDetailRemoveResponse,
  }) {
    return onScanQrCodeResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileSelectedEvent value)? profileSelected,
    TResult? Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult? Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult? Function(ClickTapButtonEvent value)? clickTapButton,
    TResult? Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult? Function(GetClaimsEvent value)? getClaims,
    TResult? Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult? Function(RemoveClaimEvent value)? removeClaim,
    TResult? Function(RemoveClaimsEvent value)? removeClaims,
    TResult? Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult? Function(UpdateClaimEvent value)? updateClaim,
    TResult? Function(OnClickClaim value)? onClickClaim,
    TResult? Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
  }) {
    return onScanQrCodeResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileSelectedEvent value)? profileSelected,
    TResult Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult Function(ClickTapButtonEvent value)? clickTapButton,
    TResult Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult Function(GetClaimsEvent value)? getClaims,
    TResult Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult Function(RemoveClaimEvent value)? removeClaim,
    TResult Function(RemoveClaimsEvent value)? removeClaims,
    TResult Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult Function(UpdateClaimEvent value)? updateClaim,
    TResult Function(OnClickClaim value)? onClickClaim,
    TResult Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (onScanQrCodeResponse != null) {
      return onScanQrCodeResponse(this);
    }
    return orElse();
  }
}

abstract class ScanQrCodeResponse implements CombinedEvent {
  const factory ScanQrCodeResponse(final String? response) =
      _$ScanQrCodeResponseImpl;

  String? get response;
  @JsonKey(ignore: true)
  _$$ScanQrCodeResponseImplCopyWith<_$ScanQrCodeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClickTapButtonEventImplCopyWith<$Res> {
  factory _$$ClickTapButtonEventImplCopyWith(_$ClickTapButtonEventImpl value,
          $Res Function(_$ClickTapButtonEventImpl) then) =
      __$$ClickTapButtonEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClickTapButtonEventImplCopyWithImpl<$Res>
    extends _$CombinedEventCopyWithImpl<$Res, _$ClickTapButtonEventImpl>
    implements _$$ClickTapButtonEventImplCopyWith<$Res> {
  __$$ClickTapButtonEventImplCopyWithImpl(_$ClickTapButtonEventImpl _value,
      $Res Function(_$ClickTapButtonEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClickTapButtonEventImpl implements ClickTapButtonEvent {
  const _$ClickTapButtonEventImpl();

  @override
  String toString() {
    return 'CombinedEvent.clickTapButton()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClickTapButtonEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() clickScanQrCode,
    required TResult Function(String? response) onScanQrCodeResponse,
    required TResult Function() clickTapButton,
    required TResult Function(Iden3MessageEntity iden3message)
        fetchAndSaveClaims,
    required TResult Function(List<FilterEntity>? filters) getClaims,
    required TResult Function(List<String> ids) getClaimsByIds,
    required TResult Function(String id) removeClaim,
    required TResult Function(List<String> ids) removeClaims,
    required TResult Function() removeAllClaims,
    required TResult Function(
            String id,
            String? issuer,
            String? did,
            ClaimState? state,
            String? expiration,
            String? type,
            Map<String, dynamic>? data)
        updateClaim,
    required TResult Function(ClaimModel claimModel) onClickClaim,
    required TResult Function(bool? removed) onClaimDetailRemoveResponse,
  }) {
    return clickTapButton();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? clickScanQrCode,
    TResult? Function(String? response)? onScanQrCodeResponse,
    TResult? Function()? clickTapButton,
    TResult? Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult? Function(List<FilterEntity>? filters)? getClaims,
    TResult? Function(List<String> ids)? getClaimsByIds,
    TResult? Function(String id)? removeClaim,
    TResult? Function(List<String> ids)? removeClaims,
    TResult? Function()? removeAllClaims,
    TResult? Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult? Function(ClaimModel claimModel)? onClickClaim,
    TResult? Function(bool? removed)? onClaimDetailRemoveResponse,
  }) {
    return clickTapButton?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? clickScanQrCode,
    TResult Function(String? response)? onScanQrCodeResponse,
    TResult Function()? clickTapButton,
    TResult Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult Function(List<FilterEntity>? filters)? getClaims,
    TResult Function(List<String> ids)? getClaimsByIds,
    TResult Function(String id)? removeClaim,
    TResult Function(List<String> ids)? removeClaims,
    TResult Function()? removeAllClaims,
    TResult Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult Function(ClaimModel claimModel)? onClickClaim,
    TResult Function(bool? removed)? onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (clickTapButton != null) {
      return clickTapButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileSelectedEvent value) profileSelected,
    required TResult Function(ClickScanQrCodeEvent value) clickScanQrCode,
    required TResult Function(ScanQrCodeResponse value) onScanQrCodeResponse,
    required TResult Function(ClickTapButtonEvent value) clickTapButton,
    required TResult Function(FetchAndSaveClaimsEvent value) fetchAndSaveClaims,
    required TResult Function(GetClaimsEvent value) getClaims,
    required TResult Function(GetClaimsByIdsEvent value) getClaimsByIds,
    required TResult Function(RemoveClaimEvent value) removeClaim,
    required TResult Function(RemoveClaimsEvent value) removeClaims,
    required TResult Function(RemoveAllClaimsEvent value) removeAllClaims,
    required TResult Function(UpdateClaimEvent value) updateClaim,
    required TResult Function(OnClickClaim value) onClickClaim,
    required TResult Function(OnClaimDetailRemoveResponse value)
        onClaimDetailRemoveResponse,
  }) {
    return clickTapButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileSelectedEvent value)? profileSelected,
    TResult? Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult? Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult? Function(ClickTapButtonEvent value)? clickTapButton,
    TResult? Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult? Function(GetClaimsEvent value)? getClaims,
    TResult? Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult? Function(RemoveClaimEvent value)? removeClaim,
    TResult? Function(RemoveClaimsEvent value)? removeClaims,
    TResult? Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult? Function(UpdateClaimEvent value)? updateClaim,
    TResult? Function(OnClickClaim value)? onClickClaim,
    TResult? Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
  }) {
    return clickTapButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileSelectedEvent value)? profileSelected,
    TResult Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult Function(ClickTapButtonEvent value)? clickTapButton,
    TResult Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult Function(GetClaimsEvent value)? getClaims,
    TResult Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult Function(RemoveClaimEvent value)? removeClaim,
    TResult Function(RemoveClaimsEvent value)? removeClaims,
    TResult Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult Function(UpdateClaimEvent value)? updateClaim,
    TResult Function(OnClickClaim value)? onClickClaim,
    TResult Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (clickTapButton != null) {
      return clickTapButton(this);
    }
    return orElse();
  }
}

abstract class ClickTapButtonEvent implements CombinedEvent {
  const factory ClickTapButtonEvent() = _$ClickTapButtonEventImpl;
}

/// @nodoc
abstract class _$$FetchAndSaveClaimsEventImplCopyWith<$Res> {
  factory _$$FetchAndSaveClaimsEventImplCopyWith(
          _$FetchAndSaveClaimsEventImpl value,
          $Res Function(_$FetchAndSaveClaimsEventImpl) then) =
      __$$FetchAndSaveClaimsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Iden3MessageEntity iden3message});
}

/// @nodoc
class __$$FetchAndSaveClaimsEventImplCopyWithImpl<$Res>
    extends _$CombinedEventCopyWithImpl<$Res, _$FetchAndSaveClaimsEventImpl>
    implements _$$FetchAndSaveClaimsEventImplCopyWith<$Res> {
  __$$FetchAndSaveClaimsEventImplCopyWithImpl(
      _$FetchAndSaveClaimsEventImpl _value,
      $Res Function(_$FetchAndSaveClaimsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iden3message = null,
  }) {
    return _then(_$FetchAndSaveClaimsEventImpl(
      iden3message: null == iden3message
          ? _value.iden3message
          : iden3message // ignore: cast_nullable_to_non_nullable
              as Iden3MessageEntity,
    ));
  }
}

/// @nodoc

class _$FetchAndSaveClaimsEventImpl implements FetchAndSaveClaimsEvent {
  const _$FetchAndSaveClaimsEventImpl({required this.iden3message});

  @override
  final Iden3MessageEntity iden3message;

  @override
  String toString() {
    return 'CombinedEvent.fetchAndSaveClaims(iden3message: $iden3message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAndSaveClaimsEventImpl &&
            (identical(other.iden3message, iden3message) ||
                other.iden3message == iden3message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iden3message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAndSaveClaimsEventImplCopyWith<_$FetchAndSaveClaimsEventImpl>
      get copyWith => __$$FetchAndSaveClaimsEventImplCopyWithImpl<
          _$FetchAndSaveClaimsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() clickScanQrCode,
    required TResult Function(String? response) onScanQrCodeResponse,
    required TResult Function() clickTapButton,
    required TResult Function(Iden3MessageEntity iden3message)
        fetchAndSaveClaims,
    required TResult Function(List<FilterEntity>? filters) getClaims,
    required TResult Function(List<String> ids) getClaimsByIds,
    required TResult Function(String id) removeClaim,
    required TResult Function(List<String> ids) removeClaims,
    required TResult Function() removeAllClaims,
    required TResult Function(
            String id,
            String? issuer,
            String? did,
            ClaimState? state,
            String? expiration,
            String? type,
            Map<String, dynamic>? data)
        updateClaim,
    required TResult Function(ClaimModel claimModel) onClickClaim,
    required TResult Function(bool? removed) onClaimDetailRemoveResponse,
  }) {
    return fetchAndSaveClaims(iden3message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? clickScanQrCode,
    TResult? Function(String? response)? onScanQrCodeResponse,
    TResult? Function()? clickTapButton,
    TResult? Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult? Function(List<FilterEntity>? filters)? getClaims,
    TResult? Function(List<String> ids)? getClaimsByIds,
    TResult? Function(String id)? removeClaim,
    TResult? Function(List<String> ids)? removeClaims,
    TResult? Function()? removeAllClaims,
    TResult? Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult? Function(ClaimModel claimModel)? onClickClaim,
    TResult? Function(bool? removed)? onClaimDetailRemoveResponse,
  }) {
    return fetchAndSaveClaims?.call(iden3message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? clickScanQrCode,
    TResult Function(String? response)? onScanQrCodeResponse,
    TResult Function()? clickTapButton,
    TResult Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult Function(List<FilterEntity>? filters)? getClaims,
    TResult Function(List<String> ids)? getClaimsByIds,
    TResult Function(String id)? removeClaim,
    TResult Function(List<String> ids)? removeClaims,
    TResult Function()? removeAllClaims,
    TResult Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult Function(ClaimModel claimModel)? onClickClaim,
    TResult Function(bool? removed)? onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (fetchAndSaveClaims != null) {
      return fetchAndSaveClaims(iden3message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileSelectedEvent value) profileSelected,
    required TResult Function(ClickScanQrCodeEvent value) clickScanQrCode,
    required TResult Function(ScanQrCodeResponse value) onScanQrCodeResponse,
    required TResult Function(ClickTapButtonEvent value) clickTapButton,
    required TResult Function(FetchAndSaveClaimsEvent value) fetchAndSaveClaims,
    required TResult Function(GetClaimsEvent value) getClaims,
    required TResult Function(GetClaimsByIdsEvent value) getClaimsByIds,
    required TResult Function(RemoveClaimEvent value) removeClaim,
    required TResult Function(RemoveClaimsEvent value) removeClaims,
    required TResult Function(RemoveAllClaimsEvent value) removeAllClaims,
    required TResult Function(UpdateClaimEvent value) updateClaim,
    required TResult Function(OnClickClaim value) onClickClaim,
    required TResult Function(OnClaimDetailRemoveResponse value)
        onClaimDetailRemoveResponse,
  }) {
    return fetchAndSaveClaims(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileSelectedEvent value)? profileSelected,
    TResult? Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult? Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult? Function(ClickTapButtonEvent value)? clickTapButton,
    TResult? Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult? Function(GetClaimsEvent value)? getClaims,
    TResult? Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult? Function(RemoveClaimEvent value)? removeClaim,
    TResult? Function(RemoveClaimsEvent value)? removeClaims,
    TResult? Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult? Function(UpdateClaimEvent value)? updateClaim,
    TResult? Function(OnClickClaim value)? onClickClaim,
    TResult? Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
  }) {
    return fetchAndSaveClaims?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileSelectedEvent value)? profileSelected,
    TResult Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult Function(ClickTapButtonEvent value)? clickTapButton,
    TResult Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult Function(GetClaimsEvent value)? getClaims,
    TResult Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult Function(RemoveClaimEvent value)? removeClaim,
    TResult Function(RemoveClaimsEvent value)? removeClaims,
    TResult Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult Function(UpdateClaimEvent value)? updateClaim,
    TResult Function(OnClickClaim value)? onClickClaim,
    TResult Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (fetchAndSaveClaims != null) {
      return fetchAndSaveClaims(this);
    }
    return orElse();
  }
}

abstract class FetchAndSaveClaimsEvent implements CombinedEvent {
  const factory FetchAndSaveClaimsEvent(
          {required final Iden3MessageEntity iden3message}) =
      _$FetchAndSaveClaimsEventImpl;

  Iden3MessageEntity get iden3message;
  @JsonKey(ignore: true)
  _$$FetchAndSaveClaimsEventImplCopyWith<_$FetchAndSaveClaimsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetClaimsEventImplCopyWith<$Res> {
  factory _$$GetClaimsEventImplCopyWith(_$GetClaimsEventImpl value,
          $Res Function(_$GetClaimsEventImpl) then) =
      __$$GetClaimsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FilterEntity>? filters});
}

/// @nodoc
class __$$GetClaimsEventImplCopyWithImpl<$Res>
    extends _$CombinedEventCopyWithImpl<$Res, _$GetClaimsEventImpl>
    implements _$$GetClaimsEventImplCopyWith<$Res> {
  __$$GetClaimsEventImplCopyWithImpl(
      _$GetClaimsEventImpl _value, $Res Function(_$GetClaimsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = freezed,
  }) {
    return _then(_$GetClaimsEventImpl(
      filters: freezed == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<FilterEntity>?,
    ));
  }
}

/// @nodoc

class _$GetClaimsEventImpl implements GetClaimsEvent {
  const _$GetClaimsEventImpl({final List<FilterEntity>? filters})
      : _filters = filters;

  final List<FilterEntity>? _filters;
  @override
  List<FilterEntity>? get filters {
    final value = _filters;
    if (value == null) return null;
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CombinedEvent.getClaims(filters: $filters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClaimsEventImpl &&
            const DeepCollectionEquality().equals(other._filters, _filters));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_filters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClaimsEventImplCopyWith<_$GetClaimsEventImpl> get copyWith =>
      __$$GetClaimsEventImplCopyWithImpl<_$GetClaimsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() clickScanQrCode,
    required TResult Function(String? response) onScanQrCodeResponse,
    required TResult Function() clickTapButton,
    required TResult Function(Iden3MessageEntity iden3message)
        fetchAndSaveClaims,
    required TResult Function(List<FilterEntity>? filters) getClaims,
    required TResult Function(List<String> ids) getClaimsByIds,
    required TResult Function(String id) removeClaim,
    required TResult Function(List<String> ids) removeClaims,
    required TResult Function() removeAllClaims,
    required TResult Function(
            String id,
            String? issuer,
            String? did,
            ClaimState? state,
            String? expiration,
            String? type,
            Map<String, dynamic>? data)
        updateClaim,
    required TResult Function(ClaimModel claimModel) onClickClaim,
    required TResult Function(bool? removed) onClaimDetailRemoveResponse,
  }) {
    return getClaims(filters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? clickScanQrCode,
    TResult? Function(String? response)? onScanQrCodeResponse,
    TResult? Function()? clickTapButton,
    TResult? Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult? Function(List<FilterEntity>? filters)? getClaims,
    TResult? Function(List<String> ids)? getClaimsByIds,
    TResult? Function(String id)? removeClaim,
    TResult? Function(List<String> ids)? removeClaims,
    TResult? Function()? removeAllClaims,
    TResult? Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult? Function(ClaimModel claimModel)? onClickClaim,
    TResult? Function(bool? removed)? onClaimDetailRemoveResponse,
  }) {
    return getClaims?.call(filters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? clickScanQrCode,
    TResult Function(String? response)? onScanQrCodeResponse,
    TResult Function()? clickTapButton,
    TResult Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult Function(List<FilterEntity>? filters)? getClaims,
    TResult Function(List<String> ids)? getClaimsByIds,
    TResult Function(String id)? removeClaim,
    TResult Function(List<String> ids)? removeClaims,
    TResult Function()? removeAllClaims,
    TResult Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult Function(ClaimModel claimModel)? onClickClaim,
    TResult Function(bool? removed)? onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (getClaims != null) {
      return getClaims(filters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileSelectedEvent value) profileSelected,
    required TResult Function(ClickScanQrCodeEvent value) clickScanQrCode,
    required TResult Function(ScanQrCodeResponse value) onScanQrCodeResponse,
    required TResult Function(ClickTapButtonEvent value) clickTapButton,
    required TResult Function(FetchAndSaveClaimsEvent value) fetchAndSaveClaims,
    required TResult Function(GetClaimsEvent value) getClaims,
    required TResult Function(GetClaimsByIdsEvent value) getClaimsByIds,
    required TResult Function(RemoveClaimEvent value) removeClaim,
    required TResult Function(RemoveClaimsEvent value) removeClaims,
    required TResult Function(RemoveAllClaimsEvent value) removeAllClaims,
    required TResult Function(UpdateClaimEvent value) updateClaim,
    required TResult Function(OnClickClaim value) onClickClaim,
    required TResult Function(OnClaimDetailRemoveResponse value)
        onClaimDetailRemoveResponse,
  }) {
    return getClaims(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileSelectedEvent value)? profileSelected,
    TResult? Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult? Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult? Function(ClickTapButtonEvent value)? clickTapButton,
    TResult? Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult? Function(GetClaimsEvent value)? getClaims,
    TResult? Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult? Function(RemoveClaimEvent value)? removeClaim,
    TResult? Function(RemoveClaimsEvent value)? removeClaims,
    TResult? Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult? Function(UpdateClaimEvent value)? updateClaim,
    TResult? Function(OnClickClaim value)? onClickClaim,
    TResult? Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
  }) {
    return getClaims?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileSelectedEvent value)? profileSelected,
    TResult Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult Function(ClickTapButtonEvent value)? clickTapButton,
    TResult Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult Function(GetClaimsEvent value)? getClaims,
    TResult Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult Function(RemoveClaimEvent value)? removeClaim,
    TResult Function(RemoveClaimsEvent value)? removeClaims,
    TResult Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult Function(UpdateClaimEvent value)? updateClaim,
    TResult Function(OnClickClaim value)? onClickClaim,
    TResult Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (getClaims != null) {
      return getClaims(this);
    }
    return orElse();
  }
}

abstract class GetClaimsEvent implements CombinedEvent {
  const factory GetClaimsEvent({final List<FilterEntity>? filters}) =
      _$GetClaimsEventImpl;

  List<FilterEntity>? get filters;
  @JsonKey(ignore: true)
  _$$GetClaimsEventImplCopyWith<_$GetClaimsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetClaimsByIdsEventImplCopyWith<$Res> {
  factory _$$GetClaimsByIdsEventImplCopyWith(_$GetClaimsByIdsEventImpl value,
          $Res Function(_$GetClaimsByIdsEventImpl) then) =
      __$$GetClaimsByIdsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> ids});
}

/// @nodoc
class __$$GetClaimsByIdsEventImplCopyWithImpl<$Res>
    extends _$CombinedEventCopyWithImpl<$Res, _$GetClaimsByIdsEventImpl>
    implements _$$GetClaimsByIdsEventImplCopyWith<$Res> {
  __$$GetClaimsByIdsEventImplCopyWithImpl(_$GetClaimsByIdsEventImpl _value,
      $Res Function(_$GetClaimsByIdsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$GetClaimsByIdsEventImpl(
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$GetClaimsByIdsEventImpl implements GetClaimsByIdsEvent {
  const _$GetClaimsByIdsEventImpl({required final List<String> ids})
      : _ids = ids;

  final List<String> _ids;
  @override
  List<String> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'CombinedEvent.getClaimsByIds(ids: $ids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClaimsByIdsEventImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClaimsByIdsEventImplCopyWith<_$GetClaimsByIdsEventImpl> get copyWith =>
      __$$GetClaimsByIdsEventImplCopyWithImpl<_$GetClaimsByIdsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() clickScanQrCode,
    required TResult Function(String? response) onScanQrCodeResponse,
    required TResult Function() clickTapButton,
    required TResult Function(Iden3MessageEntity iden3message)
        fetchAndSaveClaims,
    required TResult Function(List<FilterEntity>? filters) getClaims,
    required TResult Function(List<String> ids) getClaimsByIds,
    required TResult Function(String id) removeClaim,
    required TResult Function(List<String> ids) removeClaims,
    required TResult Function() removeAllClaims,
    required TResult Function(
            String id,
            String? issuer,
            String? did,
            ClaimState? state,
            String? expiration,
            String? type,
            Map<String, dynamic>? data)
        updateClaim,
    required TResult Function(ClaimModel claimModel) onClickClaim,
    required TResult Function(bool? removed) onClaimDetailRemoveResponse,
  }) {
    return getClaimsByIds(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? clickScanQrCode,
    TResult? Function(String? response)? onScanQrCodeResponse,
    TResult? Function()? clickTapButton,
    TResult? Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult? Function(List<FilterEntity>? filters)? getClaims,
    TResult? Function(List<String> ids)? getClaimsByIds,
    TResult? Function(String id)? removeClaim,
    TResult? Function(List<String> ids)? removeClaims,
    TResult? Function()? removeAllClaims,
    TResult? Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult? Function(ClaimModel claimModel)? onClickClaim,
    TResult? Function(bool? removed)? onClaimDetailRemoveResponse,
  }) {
    return getClaimsByIds?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? clickScanQrCode,
    TResult Function(String? response)? onScanQrCodeResponse,
    TResult Function()? clickTapButton,
    TResult Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult Function(List<FilterEntity>? filters)? getClaims,
    TResult Function(List<String> ids)? getClaimsByIds,
    TResult Function(String id)? removeClaim,
    TResult Function(List<String> ids)? removeClaims,
    TResult Function()? removeAllClaims,
    TResult Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult Function(ClaimModel claimModel)? onClickClaim,
    TResult Function(bool? removed)? onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (getClaimsByIds != null) {
      return getClaimsByIds(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileSelectedEvent value) profileSelected,
    required TResult Function(ClickScanQrCodeEvent value) clickScanQrCode,
    required TResult Function(ScanQrCodeResponse value) onScanQrCodeResponse,
    required TResult Function(ClickTapButtonEvent value) clickTapButton,
    required TResult Function(FetchAndSaveClaimsEvent value) fetchAndSaveClaims,
    required TResult Function(GetClaimsEvent value) getClaims,
    required TResult Function(GetClaimsByIdsEvent value) getClaimsByIds,
    required TResult Function(RemoveClaimEvent value) removeClaim,
    required TResult Function(RemoveClaimsEvent value) removeClaims,
    required TResult Function(RemoveAllClaimsEvent value) removeAllClaims,
    required TResult Function(UpdateClaimEvent value) updateClaim,
    required TResult Function(OnClickClaim value) onClickClaim,
    required TResult Function(OnClaimDetailRemoveResponse value)
        onClaimDetailRemoveResponse,
  }) {
    return getClaimsByIds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileSelectedEvent value)? profileSelected,
    TResult? Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult? Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult? Function(ClickTapButtonEvent value)? clickTapButton,
    TResult? Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult? Function(GetClaimsEvent value)? getClaims,
    TResult? Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult? Function(RemoveClaimEvent value)? removeClaim,
    TResult? Function(RemoveClaimsEvent value)? removeClaims,
    TResult? Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult? Function(UpdateClaimEvent value)? updateClaim,
    TResult? Function(OnClickClaim value)? onClickClaim,
    TResult? Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
  }) {
    return getClaimsByIds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileSelectedEvent value)? profileSelected,
    TResult Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult Function(ClickTapButtonEvent value)? clickTapButton,
    TResult Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult Function(GetClaimsEvent value)? getClaims,
    TResult Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult Function(RemoveClaimEvent value)? removeClaim,
    TResult Function(RemoveClaimsEvent value)? removeClaims,
    TResult Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult Function(UpdateClaimEvent value)? updateClaim,
    TResult Function(OnClickClaim value)? onClickClaim,
    TResult Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (getClaimsByIds != null) {
      return getClaimsByIds(this);
    }
    return orElse();
  }
}

abstract class GetClaimsByIdsEvent implements CombinedEvent {
  const factory GetClaimsByIdsEvent({required final List<String> ids}) =
      _$GetClaimsByIdsEventImpl;

  List<String> get ids;
  @JsonKey(ignore: true)
  _$$GetClaimsByIdsEventImplCopyWith<_$GetClaimsByIdsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveClaimEventImplCopyWith<$Res> {
  factory _$$RemoveClaimEventImplCopyWith(_$RemoveClaimEventImpl value,
          $Res Function(_$RemoveClaimEventImpl) then) =
      __$$RemoveClaimEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$RemoveClaimEventImplCopyWithImpl<$Res>
    extends _$CombinedEventCopyWithImpl<$Res, _$RemoveClaimEventImpl>
    implements _$$RemoveClaimEventImplCopyWith<$Res> {
  __$$RemoveClaimEventImplCopyWithImpl(_$RemoveClaimEventImpl _value,
      $Res Function(_$RemoveClaimEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RemoveClaimEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveClaimEventImpl implements RemoveClaimEvent {
  const _$RemoveClaimEventImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'CombinedEvent.removeClaim(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveClaimEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveClaimEventImplCopyWith<_$RemoveClaimEventImpl> get copyWith =>
      __$$RemoveClaimEventImplCopyWithImpl<_$RemoveClaimEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() clickScanQrCode,
    required TResult Function(String? response) onScanQrCodeResponse,
    required TResult Function() clickTapButton,
    required TResult Function(Iden3MessageEntity iden3message)
        fetchAndSaveClaims,
    required TResult Function(List<FilterEntity>? filters) getClaims,
    required TResult Function(List<String> ids) getClaimsByIds,
    required TResult Function(String id) removeClaim,
    required TResult Function(List<String> ids) removeClaims,
    required TResult Function() removeAllClaims,
    required TResult Function(
            String id,
            String? issuer,
            String? did,
            ClaimState? state,
            String? expiration,
            String? type,
            Map<String, dynamic>? data)
        updateClaim,
    required TResult Function(ClaimModel claimModel) onClickClaim,
    required TResult Function(bool? removed) onClaimDetailRemoveResponse,
  }) {
    return removeClaim(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? clickScanQrCode,
    TResult? Function(String? response)? onScanQrCodeResponse,
    TResult? Function()? clickTapButton,
    TResult? Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult? Function(List<FilterEntity>? filters)? getClaims,
    TResult? Function(List<String> ids)? getClaimsByIds,
    TResult? Function(String id)? removeClaim,
    TResult? Function(List<String> ids)? removeClaims,
    TResult? Function()? removeAllClaims,
    TResult? Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult? Function(ClaimModel claimModel)? onClickClaim,
    TResult? Function(bool? removed)? onClaimDetailRemoveResponse,
  }) {
    return removeClaim?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? clickScanQrCode,
    TResult Function(String? response)? onScanQrCodeResponse,
    TResult Function()? clickTapButton,
    TResult Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult Function(List<FilterEntity>? filters)? getClaims,
    TResult Function(List<String> ids)? getClaimsByIds,
    TResult Function(String id)? removeClaim,
    TResult Function(List<String> ids)? removeClaims,
    TResult Function()? removeAllClaims,
    TResult Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult Function(ClaimModel claimModel)? onClickClaim,
    TResult Function(bool? removed)? onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (removeClaim != null) {
      return removeClaim(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileSelectedEvent value) profileSelected,
    required TResult Function(ClickScanQrCodeEvent value) clickScanQrCode,
    required TResult Function(ScanQrCodeResponse value) onScanQrCodeResponse,
    required TResult Function(ClickTapButtonEvent value) clickTapButton,
    required TResult Function(FetchAndSaveClaimsEvent value) fetchAndSaveClaims,
    required TResult Function(GetClaimsEvent value) getClaims,
    required TResult Function(GetClaimsByIdsEvent value) getClaimsByIds,
    required TResult Function(RemoveClaimEvent value) removeClaim,
    required TResult Function(RemoveClaimsEvent value) removeClaims,
    required TResult Function(RemoveAllClaimsEvent value) removeAllClaims,
    required TResult Function(UpdateClaimEvent value) updateClaim,
    required TResult Function(OnClickClaim value) onClickClaim,
    required TResult Function(OnClaimDetailRemoveResponse value)
        onClaimDetailRemoveResponse,
  }) {
    return removeClaim(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileSelectedEvent value)? profileSelected,
    TResult? Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult? Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult? Function(ClickTapButtonEvent value)? clickTapButton,
    TResult? Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult? Function(GetClaimsEvent value)? getClaims,
    TResult? Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult? Function(RemoveClaimEvent value)? removeClaim,
    TResult? Function(RemoveClaimsEvent value)? removeClaims,
    TResult? Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult? Function(UpdateClaimEvent value)? updateClaim,
    TResult? Function(OnClickClaim value)? onClickClaim,
    TResult? Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
  }) {
    return removeClaim?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileSelectedEvent value)? profileSelected,
    TResult Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult Function(ClickTapButtonEvent value)? clickTapButton,
    TResult Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult Function(GetClaimsEvent value)? getClaims,
    TResult Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult Function(RemoveClaimEvent value)? removeClaim,
    TResult Function(RemoveClaimsEvent value)? removeClaims,
    TResult Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult Function(UpdateClaimEvent value)? updateClaim,
    TResult Function(OnClickClaim value)? onClickClaim,
    TResult Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (removeClaim != null) {
      return removeClaim(this);
    }
    return orElse();
  }
}

abstract class RemoveClaimEvent implements CombinedEvent {
  const factory RemoveClaimEvent({required final String id}) =
      _$RemoveClaimEventImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$RemoveClaimEventImplCopyWith<_$RemoveClaimEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveClaimsEventImplCopyWith<$Res> {
  factory _$$RemoveClaimsEventImplCopyWith(_$RemoveClaimsEventImpl value,
          $Res Function(_$RemoveClaimsEventImpl) then) =
      __$$RemoveClaimsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> ids});
}

/// @nodoc
class __$$RemoveClaimsEventImplCopyWithImpl<$Res>
    extends _$CombinedEventCopyWithImpl<$Res, _$RemoveClaimsEventImpl>
    implements _$$RemoveClaimsEventImplCopyWith<$Res> {
  __$$RemoveClaimsEventImplCopyWithImpl(_$RemoveClaimsEventImpl _value,
      $Res Function(_$RemoveClaimsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$RemoveClaimsEventImpl(
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$RemoveClaimsEventImpl implements RemoveClaimsEvent {
  const _$RemoveClaimsEventImpl({required final List<String> ids}) : _ids = ids;

  final List<String> _ids;
  @override
  List<String> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'CombinedEvent.removeClaims(ids: $ids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveClaimsEventImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveClaimsEventImplCopyWith<_$RemoveClaimsEventImpl> get copyWith =>
      __$$RemoveClaimsEventImplCopyWithImpl<_$RemoveClaimsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() clickScanQrCode,
    required TResult Function(String? response) onScanQrCodeResponse,
    required TResult Function() clickTapButton,
    required TResult Function(Iden3MessageEntity iden3message)
        fetchAndSaveClaims,
    required TResult Function(List<FilterEntity>? filters) getClaims,
    required TResult Function(List<String> ids) getClaimsByIds,
    required TResult Function(String id) removeClaim,
    required TResult Function(List<String> ids) removeClaims,
    required TResult Function() removeAllClaims,
    required TResult Function(
            String id,
            String? issuer,
            String? did,
            ClaimState? state,
            String? expiration,
            String? type,
            Map<String, dynamic>? data)
        updateClaim,
    required TResult Function(ClaimModel claimModel) onClickClaim,
    required TResult Function(bool? removed) onClaimDetailRemoveResponse,
  }) {
    return removeClaims(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? clickScanQrCode,
    TResult? Function(String? response)? onScanQrCodeResponse,
    TResult? Function()? clickTapButton,
    TResult? Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult? Function(List<FilterEntity>? filters)? getClaims,
    TResult? Function(List<String> ids)? getClaimsByIds,
    TResult? Function(String id)? removeClaim,
    TResult? Function(List<String> ids)? removeClaims,
    TResult? Function()? removeAllClaims,
    TResult? Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult? Function(ClaimModel claimModel)? onClickClaim,
    TResult? Function(bool? removed)? onClaimDetailRemoveResponse,
  }) {
    return removeClaims?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? clickScanQrCode,
    TResult Function(String? response)? onScanQrCodeResponse,
    TResult Function()? clickTapButton,
    TResult Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult Function(List<FilterEntity>? filters)? getClaims,
    TResult Function(List<String> ids)? getClaimsByIds,
    TResult Function(String id)? removeClaim,
    TResult Function(List<String> ids)? removeClaims,
    TResult Function()? removeAllClaims,
    TResult Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult Function(ClaimModel claimModel)? onClickClaim,
    TResult Function(bool? removed)? onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (removeClaims != null) {
      return removeClaims(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileSelectedEvent value) profileSelected,
    required TResult Function(ClickScanQrCodeEvent value) clickScanQrCode,
    required TResult Function(ScanQrCodeResponse value) onScanQrCodeResponse,
    required TResult Function(ClickTapButtonEvent value) clickTapButton,
    required TResult Function(FetchAndSaveClaimsEvent value) fetchAndSaveClaims,
    required TResult Function(GetClaimsEvent value) getClaims,
    required TResult Function(GetClaimsByIdsEvent value) getClaimsByIds,
    required TResult Function(RemoveClaimEvent value) removeClaim,
    required TResult Function(RemoveClaimsEvent value) removeClaims,
    required TResult Function(RemoveAllClaimsEvent value) removeAllClaims,
    required TResult Function(UpdateClaimEvent value) updateClaim,
    required TResult Function(OnClickClaim value) onClickClaim,
    required TResult Function(OnClaimDetailRemoveResponse value)
        onClaimDetailRemoveResponse,
  }) {
    return removeClaims(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileSelectedEvent value)? profileSelected,
    TResult? Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult? Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult? Function(ClickTapButtonEvent value)? clickTapButton,
    TResult? Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult? Function(GetClaimsEvent value)? getClaims,
    TResult? Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult? Function(RemoveClaimEvent value)? removeClaim,
    TResult? Function(RemoveClaimsEvent value)? removeClaims,
    TResult? Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult? Function(UpdateClaimEvent value)? updateClaim,
    TResult? Function(OnClickClaim value)? onClickClaim,
    TResult? Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
  }) {
    return removeClaims?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileSelectedEvent value)? profileSelected,
    TResult Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult Function(ClickTapButtonEvent value)? clickTapButton,
    TResult Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult Function(GetClaimsEvent value)? getClaims,
    TResult Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult Function(RemoveClaimEvent value)? removeClaim,
    TResult Function(RemoveClaimsEvent value)? removeClaims,
    TResult Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult Function(UpdateClaimEvent value)? updateClaim,
    TResult Function(OnClickClaim value)? onClickClaim,
    TResult Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (removeClaims != null) {
      return removeClaims(this);
    }
    return orElse();
  }
}

abstract class RemoveClaimsEvent implements CombinedEvent {
  const factory RemoveClaimsEvent({required final List<String> ids}) =
      _$RemoveClaimsEventImpl;

  List<String> get ids;
  @JsonKey(ignore: true)
  _$$RemoveClaimsEventImplCopyWith<_$RemoveClaimsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveAllClaimsEventImplCopyWith<$Res> {
  factory _$$RemoveAllClaimsEventImplCopyWith(_$RemoveAllClaimsEventImpl value,
          $Res Function(_$RemoveAllClaimsEventImpl) then) =
      __$$RemoveAllClaimsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveAllClaimsEventImplCopyWithImpl<$Res>
    extends _$CombinedEventCopyWithImpl<$Res, _$RemoveAllClaimsEventImpl>
    implements _$$RemoveAllClaimsEventImplCopyWith<$Res> {
  __$$RemoveAllClaimsEventImplCopyWithImpl(_$RemoveAllClaimsEventImpl _value,
      $Res Function(_$RemoveAllClaimsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveAllClaimsEventImpl implements RemoveAllClaimsEvent {
  const _$RemoveAllClaimsEventImpl();

  @override
  String toString() {
    return 'CombinedEvent.removeAllClaims()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveAllClaimsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() clickScanQrCode,
    required TResult Function(String? response) onScanQrCodeResponse,
    required TResult Function() clickTapButton,
    required TResult Function(Iden3MessageEntity iden3message)
        fetchAndSaveClaims,
    required TResult Function(List<FilterEntity>? filters) getClaims,
    required TResult Function(List<String> ids) getClaimsByIds,
    required TResult Function(String id) removeClaim,
    required TResult Function(List<String> ids) removeClaims,
    required TResult Function() removeAllClaims,
    required TResult Function(
            String id,
            String? issuer,
            String? did,
            ClaimState? state,
            String? expiration,
            String? type,
            Map<String, dynamic>? data)
        updateClaim,
    required TResult Function(ClaimModel claimModel) onClickClaim,
    required TResult Function(bool? removed) onClaimDetailRemoveResponse,
  }) {
    return removeAllClaims();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? clickScanQrCode,
    TResult? Function(String? response)? onScanQrCodeResponse,
    TResult? Function()? clickTapButton,
    TResult? Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult? Function(List<FilterEntity>? filters)? getClaims,
    TResult? Function(List<String> ids)? getClaimsByIds,
    TResult? Function(String id)? removeClaim,
    TResult? Function(List<String> ids)? removeClaims,
    TResult? Function()? removeAllClaims,
    TResult? Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult? Function(ClaimModel claimModel)? onClickClaim,
    TResult? Function(bool? removed)? onClaimDetailRemoveResponse,
  }) {
    return removeAllClaims?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? clickScanQrCode,
    TResult Function(String? response)? onScanQrCodeResponse,
    TResult Function()? clickTapButton,
    TResult Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult Function(List<FilterEntity>? filters)? getClaims,
    TResult Function(List<String> ids)? getClaimsByIds,
    TResult Function(String id)? removeClaim,
    TResult Function(List<String> ids)? removeClaims,
    TResult Function()? removeAllClaims,
    TResult Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult Function(ClaimModel claimModel)? onClickClaim,
    TResult Function(bool? removed)? onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (removeAllClaims != null) {
      return removeAllClaims();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileSelectedEvent value) profileSelected,
    required TResult Function(ClickScanQrCodeEvent value) clickScanQrCode,
    required TResult Function(ScanQrCodeResponse value) onScanQrCodeResponse,
    required TResult Function(ClickTapButtonEvent value) clickTapButton,
    required TResult Function(FetchAndSaveClaimsEvent value) fetchAndSaveClaims,
    required TResult Function(GetClaimsEvent value) getClaims,
    required TResult Function(GetClaimsByIdsEvent value) getClaimsByIds,
    required TResult Function(RemoveClaimEvent value) removeClaim,
    required TResult Function(RemoveClaimsEvent value) removeClaims,
    required TResult Function(RemoveAllClaimsEvent value) removeAllClaims,
    required TResult Function(UpdateClaimEvent value) updateClaim,
    required TResult Function(OnClickClaim value) onClickClaim,
    required TResult Function(OnClaimDetailRemoveResponse value)
        onClaimDetailRemoveResponse,
  }) {
    return removeAllClaims(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileSelectedEvent value)? profileSelected,
    TResult? Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult? Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult? Function(ClickTapButtonEvent value)? clickTapButton,
    TResult? Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult? Function(GetClaimsEvent value)? getClaims,
    TResult? Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult? Function(RemoveClaimEvent value)? removeClaim,
    TResult? Function(RemoveClaimsEvent value)? removeClaims,
    TResult? Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult? Function(UpdateClaimEvent value)? updateClaim,
    TResult? Function(OnClickClaim value)? onClickClaim,
    TResult? Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
  }) {
    return removeAllClaims?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileSelectedEvent value)? profileSelected,
    TResult Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult Function(ClickTapButtonEvent value)? clickTapButton,
    TResult Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult Function(GetClaimsEvent value)? getClaims,
    TResult Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult Function(RemoveClaimEvent value)? removeClaim,
    TResult Function(RemoveClaimsEvent value)? removeClaims,
    TResult Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult Function(UpdateClaimEvent value)? updateClaim,
    TResult Function(OnClickClaim value)? onClickClaim,
    TResult Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (removeAllClaims != null) {
      return removeAllClaims(this);
    }
    return orElse();
  }
}

abstract class RemoveAllClaimsEvent implements CombinedEvent {
  const factory RemoveAllClaimsEvent() = _$RemoveAllClaimsEventImpl;
}

/// @nodoc
abstract class _$$UpdateClaimEventImplCopyWith<$Res> {
  factory _$$UpdateClaimEventImplCopyWith(_$UpdateClaimEventImpl value,
          $Res Function(_$UpdateClaimEventImpl) then) =
      __$$UpdateClaimEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String id,
      String? issuer,
      String? did,
      ClaimState? state,
      String? expiration,
      String? type,
      Map<String, dynamic>? data});
}

/// @nodoc
class __$$UpdateClaimEventImplCopyWithImpl<$Res>
    extends _$CombinedEventCopyWithImpl<$Res, _$UpdateClaimEventImpl>
    implements _$$UpdateClaimEventImplCopyWith<$Res> {
  __$$UpdateClaimEventImplCopyWithImpl(_$UpdateClaimEventImpl _value,
      $Res Function(_$UpdateClaimEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? issuer = freezed,
    Object? did = freezed,
    Object? state = freezed,
    Object? expiration = freezed,
    Object? type = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UpdateClaimEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      issuer: freezed == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as String?,
      did: freezed == did
          ? _value.did
          : did // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ClaimState?,
      expiration: freezed == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$UpdateClaimEventImpl implements UpdateClaimEvent {
  const _$UpdateClaimEventImpl(
      {required this.id,
      this.issuer,
      this.did,
      this.state,
      this.expiration,
      this.type,
      final Map<String, dynamic>? data})
      : _data = data;

  @override
  final String id;
  @override
  final String? issuer;
  @override
  final String? did;
  @override
  final ClaimState? state;
  @override
  final String? expiration;
  @override
  final String? type;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CombinedEvent.updateClaim(id: $id, issuer: $issuer, did: $did, state: $state, expiration: $expiration, type: $type, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateClaimEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.issuer, issuer) || other.issuer == issuer) &&
            (identical(other.did, did) || other.did == did) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, issuer, did, state,
      expiration, type, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateClaimEventImplCopyWith<_$UpdateClaimEventImpl> get copyWith =>
      __$$UpdateClaimEventImplCopyWithImpl<_$UpdateClaimEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() clickScanQrCode,
    required TResult Function(String? response) onScanQrCodeResponse,
    required TResult Function() clickTapButton,
    required TResult Function(Iden3MessageEntity iden3message)
        fetchAndSaveClaims,
    required TResult Function(List<FilterEntity>? filters) getClaims,
    required TResult Function(List<String> ids) getClaimsByIds,
    required TResult Function(String id) removeClaim,
    required TResult Function(List<String> ids) removeClaims,
    required TResult Function() removeAllClaims,
    required TResult Function(
            String id,
            String? issuer,
            String? did,
            ClaimState? state,
            String? expiration,
            String? type,
            Map<String, dynamic>? data)
        updateClaim,
    required TResult Function(ClaimModel claimModel) onClickClaim,
    required TResult Function(bool? removed) onClaimDetailRemoveResponse,
  }) {
    return updateClaim(id, issuer, did, state, expiration, type, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? clickScanQrCode,
    TResult? Function(String? response)? onScanQrCodeResponse,
    TResult? Function()? clickTapButton,
    TResult? Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult? Function(List<FilterEntity>? filters)? getClaims,
    TResult? Function(List<String> ids)? getClaimsByIds,
    TResult? Function(String id)? removeClaim,
    TResult? Function(List<String> ids)? removeClaims,
    TResult? Function()? removeAllClaims,
    TResult? Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult? Function(ClaimModel claimModel)? onClickClaim,
    TResult? Function(bool? removed)? onClaimDetailRemoveResponse,
  }) {
    return updateClaim?.call(id, issuer, did, state, expiration, type, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? clickScanQrCode,
    TResult Function(String? response)? onScanQrCodeResponse,
    TResult Function()? clickTapButton,
    TResult Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult Function(List<FilterEntity>? filters)? getClaims,
    TResult Function(List<String> ids)? getClaimsByIds,
    TResult Function(String id)? removeClaim,
    TResult Function(List<String> ids)? removeClaims,
    TResult Function()? removeAllClaims,
    TResult Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult Function(ClaimModel claimModel)? onClickClaim,
    TResult Function(bool? removed)? onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (updateClaim != null) {
      return updateClaim(id, issuer, did, state, expiration, type, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileSelectedEvent value) profileSelected,
    required TResult Function(ClickScanQrCodeEvent value) clickScanQrCode,
    required TResult Function(ScanQrCodeResponse value) onScanQrCodeResponse,
    required TResult Function(ClickTapButtonEvent value) clickTapButton,
    required TResult Function(FetchAndSaveClaimsEvent value) fetchAndSaveClaims,
    required TResult Function(GetClaimsEvent value) getClaims,
    required TResult Function(GetClaimsByIdsEvent value) getClaimsByIds,
    required TResult Function(RemoveClaimEvent value) removeClaim,
    required TResult Function(RemoveClaimsEvent value) removeClaims,
    required TResult Function(RemoveAllClaimsEvent value) removeAllClaims,
    required TResult Function(UpdateClaimEvent value) updateClaim,
    required TResult Function(OnClickClaim value) onClickClaim,
    required TResult Function(OnClaimDetailRemoveResponse value)
        onClaimDetailRemoveResponse,
  }) {
    return updateClaim(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileSelectedEvent value)? profileSelected,
    TResult? Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult? Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult? Function(ClickTapButtonEvent value)? clickTapButton,
    TResult? Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult? Function(GetClaimsEvent value)? getClaims,
    TResult? Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult? Function(RemoveClaimEvent value)? removeClaim,
    TResult? Function(RemoveClaimsEvent value)? removeClaims,
    TResult? Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult? Function(UpdateClaimEvent value)? updateClaim,
    TResult? Function(OnClickClaim value)? onClickClaim,
    TResult? Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
  }) {
    return updateClaim?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileSelectedEvent value)? profileSelected,
    TResult Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult Function(ClickTapButtonEvent value)? clickTapButton,
    TResult Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult Function(GetClaimsEvent value)? getClaims,
    TResult Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult Function(RemoveClaimEvent value)? removeClaim,
    TResult Function(RemoveClaimsEvent value)? removeClaims,
    TResult Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult Function(UpdateClaimEvent value)? updateClaim,
    TResult Function(OnClickClaim value)? onClickClaim,
    TResult Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (updateClaim != null) {
      return updateClaim(this);
    }
    return orElse();
  }
}

abstract class UpdateClaimEvent implements CombinedEvent {
  const factory UpdateClaimEvent(
      {required final String id,
      final String? issuer,
      final String? did,
      final ClaimState? state,
      final String? expiration,
      final String? type,
      final Map<String, dynamic>? data}) = _$UpdateClaimEventImpl;

  String get id;
  String? get issuer;
  String? get did;
  ClaimState? get state;
  String? get expiration;
  String? get type;
  Map<String, dynamic>? get data;
  @JsonKey(ignore: true)
  _$$UpdateClaimEventImplCopyWith<_$UpdateClaimEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnClickClaimImplCopyWith<$Res> {
  factory _$$OnClickClaimImplCopyWith(
          _$OnClickClaimImpl value, $Res Function(_$OnClickClaimImpl) then) =
      __$$OnClickClaimImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClaimModel claimModel});
}

/// @nodoc
class __$$OnClickClaimImplCopyWithImpl<$Res>
    extends _$CombinedEventCopyWithImpl<$Res, _$OnClickClaimImpl>
    implements _$$OnClickClaimImplCopyWith<$Res> {
  __$$OnClickClaimImplCopyWithImpl(
      _$OnClickClaimImpl _value, $Res Function(_$OnClickClaimImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? claimModel = null,
  }) {
    return _then(_$OnClickClaimImpl(
      null == claimModel
          ? _value.claimModel
          : claimModel // ignore: cast_nullable_to_non_nullable
              as ClaimModel,
    ));
  }
}

/// @nodoc

class _$OnClickClaimImpl implements OnClickClaim {
  const _$OnClickClaimImpl(this.claimModel);

  @override
  final ClaimModel claimModel;

  @override
  String toString() {
    return 'CombinedEvent.onClickClaim(claimModel: $claimModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnClickClaimImpl &&
            (identical(other.claimModel, claimModel) ||
                other.claimModel == claimModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, claimModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnClickClaimImplCopyWith<_$OnClickClaimImpl> get copyWith =>
      __$$OnClickClaimImplCopyWithImpl<_$OnClickClaimImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() clickScanQrCode,
    required TResult Function(String? response) onScanQrCodeResponse,
    required TResult Function() clickTapButton,
    required TResult Function(Iden3MessageEntity iden3message)
        fetchAndSaveClaims,
    required TResult Function(List<FilterEntity>? filters) getClaims,
    required TResult Function(List<String> ids) getClaimsByIds,
    required TResult Function(String id) removeClaim,
    required TResult Function(List<String> ids) removeClaims,
    required TResult Function() removeAllClaims,
    required TResult Function(
            String id,
            String? issuer,
            String? did,
            ClaimState? state,
            String? expiration,
            String? type,
            Map<String, dynamic>? data)
        updateClaim,
    required TResult Function(ClaimModel claimModel) onClickClaim,
    required TResult Function(bool? removed) onClaimDetailRemoveResponse,
  }) {
    return onClickClaim(claimModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? clickScanQrCode,
    TResult? Function(String? response)? onScanQrCodeResponse,
    TResult? Function()? clickTapButton,
    TResult? Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult? Function(List<FilterEntity>? filters)? getClaims,
    TResult? Function(List<String> ids)? getClaimsByIds,
    TResult? Function(String id)? removeClaim,
    TResult? Function(List<String> ids)? removeClaims,
    TResult? Function()? removeAllClaims,
    TResult? Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult? Function(ClaimModel claimModel)? onClickClaim,
    TResult? Function(bool? removed)? onClaimDetailRemoveResponse,
  }) {
    return onClickClaim?.call(claimModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? clickScanQrCode,
    TResult Function(String? response)? onScanQrCodeResponse,
    TResult Function()? clickTapButton,
    TResult Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult Function(List<FilterEntity>? filters)? getClaims,
    TResult Function(List<String> ids)? getClaimsByIds,
    TResult Function(String id)? removeClaim,
    TResult Function(List<String> ids)? removeClaims,
    TResult Function()? removeAllClaims,
    TResult Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult Function(ClaimModel claimModel)? onClickClaim,
    TResult Function(bool? removed)? onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (onClickClaim != null) {
      return onClickClaim(claimModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileSelectedEvent value) profileSelected,
    required TResult Function(ClickScanQrCodeEvent value) clickScanQrCode,
    required TResult Function(ScanQrCodeResponse value) onScanQrCodeResponse,
    required TResult Function(ClickTapButtonEvent value) clickTapButton,
    required TResult Function(FetchAndSaveClaimsEvent value) fetchAndSaveClaims,
    required TResult Function(GetClaimsEvent value) getClaims,
    required TResult Function(GetClaimsByIdsEvent value) getClaimsByIds,
    required TResult Function(RemoveClaimEvent value) removeClaim,
    required TResult Function(RemoveClaimsEvent value) removeClaims,
    required TResult Function(RemoveAllClaimsEvent value) removeAllClaims,
    required TResult Function(UpdateClaimEvent value) updateClaim,
    required TResult Function(OnClickClaim value) onClickClaim,
    required TResult Function(OnClaimDetailRemoveResponse value)
        onClaimDetailRemoveResponse,
  }) {
    return onClickClaim(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileSelectedEvent value)? profileSelected,
    TResult? Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult? Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult? Function(ClickTapButtonEvent value)? clickTapButton,
    TResult? Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult? Function(GetClaimsEvent value)? getClaims,
    TResult? Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult? Function(RemoveClaimEvent value)? removeClaim,
    TResult? Function(RemoveClaimsEvent value)? removeClaims,
    TResult? Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult? Function(UpdateClaimEvent value)? updateClaim,
    TResult? Function(OnClickClaim value)? onClickClaim,
    TResult? Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
  }) {
    return onClickClaim?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileSelectedEvent value)? profileSelected,
    TResult Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult Function(ClickTapButtonEvent value)? clickTapButton,
    TResult Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult Function(GetClaimsEvent value)? getClaims,
    TResult Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult Function(RemoveClaimEvent value)? removeClaim,
    TResult Function(RemoveClaimsEvent value)? removeClaims,
    TResult Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult Function(UpdateClaimEvent value)? updateClaim,
    TResult Function(OnClickClaim value)? onClickClaim,
    TResult Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (onClickClaim != null) {
      return onClickClaim(this);
    }
    return orElse();
  }
}

abstract class OnClickClaim implements CombinedEvent {
  const factory OnClickClaim(final ClaimModel claimModel) = _$OnClickClaimImpl;

  ClaimModel get claimModel;
  @JsonKey(ignore: true)
  _$$OnClickClaimImplCopyWith<_$OnClickClaimImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnClaimDetailRemoveResponseImplCopyWith<$Res> {
  factory _$$OnClaimDetailRemoveResponseImplCopyWith(
          _$OnClaimDetailRemoveResponseImpl value,
          $Res Function(_$OnClaimDetailRemoveResponseImpl) then) =
      __$$OnClaimDetailRemoveResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? removed});
}

/// @nodoc
class __$$OnClaimDetailRemoveResponseImplCopyWithImpl<$Res>
    extends _$CombinedEventCopyWithImpl<$Res, _$OnClaimDetailRemoveResponseImpl>
    implements _$$OnClaimDetailRemoveResponseImplCopyWith<$Res> {
  __$$OnClaimDetailRemoveResponseImplCopyWithImpl(
      _$OnClaimDetailRemoveResponseImpl _value,
      $Res Function(_$OnClaimDetailRemoveResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? removed = freezed,
  }) {
    return _then(_$OnClaimDetailRemoveResponseImpl(
      freezed == removed
          ? _value.removed
          : removed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$OnClaimDetailRemoveResponseImpl implements OnClaimDetailRemoveResponse {
  const _$OnClaimDetailRemoveResponseImpl(this.removed);

  @override
  final bool? removed;

  @override
  String toString() {
    return 'CombinedEvent.onClaimDetailRemoveResponse(removed: $removed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnClaimDetailRemoveResponseImpl &&
            (identical(other.removed, removed) || other.removed == removed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, removed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnClaimDetailRemoveResponseImplCopyWith<_$OnClaimDetailRemoveResponseImpl>
      get copyWith => __$$OnClaimDetailRemoveResponseImplCopyWithImpl<
          _$OnClaimDetailRemoveResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectedProfile profile) profileSelected,
    required TResult Function() clickScanQrCode,
    required TResult Function(String? response) onScanQrCodeResponse,
    required TResult Function() clickTapButton,
    required TResult Function(Iden3MessageEntity iden3message)
        fetchAndSaveClaims,
    required TResult Function(List<FilterEntity>? filters) getClaims,
    required TResult Function(List<String> ids) getClaimsByIds,
    required TResult Function(String id) removeClaim,
    required TResult Function(List<String> ids) removeClaims,
    required TResult Function() removeAllClaims,
    required TResult Function(
            String id,
            String? issuer,
            String? did,
            ClaimState? state,
            String? expiration,
            String? type,
            Map<String, dynamic>? data)
        updateClaim,
    required TResult Function(ClaimModel claimModel) onClickClaim,
    required TResult Function(bool? removed) onClaimDetailRemoveResponse,
  }) {
    return onClaimDetailRemoveResponse(removed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SelectedProfile profile)? profileSelected,
    TResult? Function()? clickScanQrCode,
    TResult? Function(String? response)? onScanQrCodeResponse,
    TResult? Function()? clickTapButton,
    TResult? Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult? Function(List<FilterEntity>? filters)? getClaims,
    TResult? Function(List<String> ids)? getClaimsByIds,
    TResult? Function(String id)? removeClaim,
    TResult? Function(List<String> ids)? removeClaims,
    TResult? Function()? removeAllClaims,
    TResult? Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult? Function(ClaimModel claimModel)? onClickClaim,
    TResult? Function(bool? removed)? onClaimDetailRemoveResponse,
  }) {
    return onClaimDetailRemoveResponse?.call(removed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectedProfile profile)? profileSelected,
    TResult Function()? clickScanQrCode,
    TResult Function(String? response)? onScanQrCodeResponse,
    TResult Function()? clickTapButton,
    TResult Function(Iden3MessageEntity iden3message)? fetchAndSaveClaims,
    TResult Function(List<FilterEntity>? filters)? getClaims,
    TResult Function(List<String> ids)? getClaimsByIds,
    TResult Function(String id)? removeClaim,
    TResult Function(List<String> ids)? removeClaims,
    TResult Function()? removeAllClaims,
    TResult Function(String id, String? issuer, String? did, ClaimState? state,
            String? expiration, String? type, Map<String, dynamic>? data)?
        updateClaim,
    TResult Function(ClaimModel claimModel)? onClickClaim,
    TResult Function(bool? removed)? onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (onClaimDetailRemoveResponse != null) {
      return onClaimDetailRemoveResponse(removed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileSelectedEvent value) profileSelected,
    required TResult Function(ClickScanQrCodeEvent value) clickScanQrCode,
    required TResult Function(ScanQrCodeResponse value) onScanQrCodeResponse,
    required TResult Function(ClickTapButtonEvent value) clickTapButton,
    required TResult Function(FetchAndSaveClaimsEvent value) fetchAndSaveClaims,
    required TResult Function(GetClaimsEvent value) getClaims,
    required TResult Function(GetClaimsByIdsEvent value) getClaimsByIds,
    required TResult Function(RemoveClaimEvent value) removeClaim,
    required TResult Function(RemoveClaimsEvent value) removeClaims,
    required TResult Function(RemoveAllClaimsEvent value) removeAllClaims,
    required TResult Function(UpdateClaimEvent value) updateClaim,
    required TResult Function(OnClickClaim value) onClickClaim,
    required TResult Function(OnClaimDetailRemoveResponse value)
        onClaimDetailRemoveResponse,
  }) {
    return onClaimDetailRemoveResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileSelectedEvent value)? profileSelected,
    TResult? Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult? Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult? Function(ClickTapButtonEvent value)? clickTapButton,
    TResult? Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult? Function(GetClaimsEvent value)? getClaims,
    TResult? Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult? Function(RemoveClaimEvent value)? removeClaim,
    TResult? Function(RemoveClaimsEvent value)? removeClaims,
    TResult? Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult? Function(UpdateClaimEvent value)? updateClaim,
    TResult? Function(OnClickClaim value)? onClickClaim,
    TResult? Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
  }) {
    return onClaimDetailRemoveResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileSelectedEvent value)? profileSelected,
    TResult Function(ClickScanQrCodeEvent value)? clickScanQrCode,
    TResult Function(ScanQrCodeResponse value)? onScanQrCodeResponse,
    TResult Function(ClickTapButtonEvent value)? clickTapButton,
    TResult Function(FetchAndSaveClaimsEvent value)? fetchAndSaveClaims,
    TResult Function(GetClaimsEvent value)? getClaims,
    TResult Function(GetClaimsByIdsEvent value)? getClaimsByIds,
    TResult Function(RemoveClaimEvent value)? removeClaim,
    TResult Function(RemoveClaimsEvent value)? removeClaims,
    TResult Function(RemoveAllClaimsEvent value)? removeAllClaims,
    TResult Function(UpdateClaimEvent value)? updateClaim,
    TResult Function(OnClickClaim value)? onClickClaim,
    TResult Function(OnClaimDetailRemoveResponse value)?
        onClaimDetailRemoveResponse,
    required TResult orElse(),
  }) {
    if (onClaimDetailRemoveResponse != null) {
      return onClaimDetailRemoveResponse(this);
    }
    return orElse();
  }
}

abstract class OnClaimDetailRemoveResponse implements CombinedEvent {
  const factory OnClaimDetailRemoveResponse(final bool? removed) =
      _$OnClaimDetailRemoveResponseImpl;

  bool? get removed;
  @JsonKey(ignore: true)
  _$$OnClaimDetailRemoveResponseImplCopyWith<_$OnClaimDetailRemoveResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

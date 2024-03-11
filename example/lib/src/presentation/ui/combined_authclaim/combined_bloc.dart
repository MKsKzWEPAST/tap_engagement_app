import 'package:bloc/bloc.dart';
import 'package:polygonid_flutter_sdk/common/domain/domain_constants.dart';
import 'package:polygonid_flutter_sdk/common/domain/domain_logger.dart';
import 'package:polygonid_flutter_sdk/common/domain/entities/env_entity.dart';
import 'package:polygonid_flutter_sdk/common/domain/entities/filter_entity.dart';
import 'package:polygonid_flutter_sdk/credential/domain/entities/claim_entity.dart';
import 'package:polygonid_flutter_sdk/credential/domain/exceptions/credential_exceptions.dart';
import 'package:polygonid_flutter_sdk/iden3comm/domain/entities/authorization/request/auth_body_request.dart';
import 'package:polygonid_flutter_sdk/iden3comm/domain/entities/common/iden3_message_entity.dart';
import 'package:polygonid_flutter_sdk/iden3comm/domain/entities/credential/request/offer_iden3_message_entity.dart';
import 'package:polygonid_flutter_sdk/sdk/polygon_id_sdk.dart';

import '../../../../utils/custom_strings.dart';
import '../../../../utils/nonce_utils.dart';
import '../../../../utils/qr_code_parser_utils.dart';
import '../../../../utils/secure_storage_keys.dart';
import '../../../data/secure_storage.dart';
import '../../dependency_injection/dependencies_provider.dart';
import '../claims/mappers/claim_model_mapper.dart';
import '../claims/models/claim_model.dart';
import '../common/widgets/profile_radio_button.dart';
import 'combined_event.dart';
import 'combined_state.dart';

class CombinedBloc extends Bloc<CombinedEvent, CombinedState> {
  final ClaimModelMapper _mapper;
  final PolygonIdSdk _polygonIdSdk;
  final QrcodeParserUtils _qrcodeParserUtils;

  static const SelectedProfile _defaultProfile = SelectedProfile.public;
  SelectedProfile selectedProfile = _defaultProfile;

  CombinedBloc(
    this._mapper,
    this._polygonIdSdk,
    this._qrcodeParserUtils,
  ) : super(const CombinedState.initial()) {
    on<ClickScanQrCodeEvent>(_handleClickScanQrCode);
    on<ScanQrCodeResponse>(_handleScanQrCodeResponse);
    on<ProfileSelectedEvent>(_handleProfileSelected);
    on<FetchAndSaveClaimsEvent>(_fetchAndSaveClaims);
    on<GetClaimsEvent>(_getClaims);
    on<GetClaimsByIdsEvent>(_getClaimsByIds);
    on<RemoveClaimEvent>(_removeClaim);
    on<RemoveClaimsEvent>(_removeClaims);
    on<RemoveAllClaimsEvent>(_removeAllClaims);
    on<UpdateClaimEvent>(_updateClaim);
    on<OnClickClaim>(_handleClickClaim);
    on<OnClaimDetailRemoveResponse>(_handleRemoveClaimResponse);
  }

  void _handleProfileSelected(
      ProfileSelectedEvent event, Emitter<CombinedState> emit) {
    selectedProfile = event.profile;
    emit(CombinedState.profileSelected(event.profile));
  }

  ///
  Stream<String> get proofGenerationStepsStream =>
      _polygonIdSdk.proof.proofGenerationStepsStream();

  ///
  void _handleClickScanQrCode(
      ClickScanQrCodeEvent event, Emitter<CombinedState> emit) {
    emit(const CombinedState.navigateToQrCodeScanner());
  }

  /// TODO combine with below one
  Future<void> _handleScanQrCodeResponse(
      ScanQrCodeResponse event, Emitter<CombinedState> emit) async {
    String? qrCodeResponse = event.response;
    if (qrCodeResponse == null || qrCodeResponse.isEmpty) {
      emit(const CombinedState.error("no qr code scanned"));
      return;
    }

    try {
      final Iden3MessageEntity iden3message =
          await _qrcodeParserUtils.getIden3MessageFromQrCode(qrCodeResponse);

      // TODO
      // IF CLAIM {
      emit(CombinedState.qrCodeScanned(iden3message));
      // }

      // IF AUTH {...
      emit(CombinedState.loaded(iden3message));

      String? privateKey =
          await SecureStorage.read(key: SecureStorageKeys.privateKey);

      if (privateKey == null) {
        emit(const CombinedState.error("no private key found"));
        return;
      }

      await _authenticate(
        iden3message: iden3message,
        privateKey: privateKey,
        emit: emit,
      );
    } catch (error) {
      emit(const CombinedState.error("Scanned code is not valid"));
    }
  }

  ///
  Future<void> _authenticate({
    required Iden3MessageEntity iden3message,
    required String privateKey,
    required Emitter<CombinedState> emit,
  }) async {
    emit(const CombinedState.loading());

    EnvEntity envEntity = await _polygonIdSdk.getEnv();

    String? did = await _polygonIdSdk.identity.getDidIdentifier(
        privateKey: privateKey,
        blockchain: envEntity.blockchain,
        network: envEntity.network);

    try {
      final BigInt nonce = selectedProfile == SelectedProfile.public
          ? GENESIS_PROFILE_NONCE
          : await NonceUtils(getIt()).getPrivateProfileNonce(
              did: did, privateKey: privateKey, from: iden3message.from);
      await _polygonIdSdk.iden3comm.authenticate(
        message: iden3message,
        genesisDid: did,
        privateKey: privateKey,
        profileNonce: nonce,
      );

      emit(const CombinedState.authenticated());
      AuthBodyRequest? body = castToAuthBody(iden3message.body);

      if (body == null) {
        return;
      }

      //http request => credential
    } catch (error) {
      emit(CombinedState.error(error.toString()));
    }
  }

  AuthBodyRequest? castToAuthBody(dynamic body) {
    try {
      return body as AuthBodyRequest;
    } catch (e) {
      // Handle the case where casting fails gracefully
      print("Casting to AuthBodyRequest failed: $e");
      return null; // or throw an exception, depending on your use case
    }
  }

// Auth (above)
// Claims (below)

  ///
  Future<void> _fetchAndSaveClaims(
      FetchAndSaveClaimsEvent event, Emitter<CombinedState> emit) async {
    String? privateKey =
        await SecureStorage.read(key: SecureStorageKeys.privateKey);

    if (privateKey == null) {
      emit(const CombinedState.error("Private key not found"));
      return;
    }

    EnvEntity env = await _polygonIdSdk.getEnv();

    String didIdentifier = await _polygonIdSdk.identity.getDidIdentifier(
        privateKey: privateKey,
        blockchain: env.blockchain,
        network: env.network);

    emit(const CombinedState.loading());

    Iden3MessageEntity iden3message = event.iden3message;
    logger().i(iden3message.messageType);
    logger().i(iden3message.body);
    if (event.iden3message.messageType != Iden3MessageType.credentialOffer) {
      emit(const CombinedState.error("Read message is not of type offer"));
      return;
    }

    BigInt nonce = await NonceUtils(_polygonIdSdk).lookupNonce(
            did: didIdentifier,
            privateKey: privateKey,
            from: iden3message.from) ??
        GENESIS_PROFILE_NONCE;

    try {
      List<ClaimEntity> claimList =
          await _polygonIdSdk.iden3comm.fetchAndSaveClaims(
        message: event.iden3message as OfferIden3MessageEntity,
        genesisDid: didIdentifier,
        profileNonce: nonce,
        privateKey: privateKey,
      );

      if (claimList.isNotEmpty) {
        add(const GetClaimsEvent());
      }
    } catch (exception) {
      emit(const CombinedState.error(CustomStrings.iden3messageGenericError));
    }
  }

  ///
  Future<void> _getClaims(
      GetClaimsEvent event, Emitter<CombinedState> emit) async {
    emit(const CombinedState.loading());

    List<FilterEntity>? filters = event.filters;

    String? privateKey =
        await SecureStorage.read(key: SecureStorageKeys.privateKey);

    if (privateKey == null) {
      emit(const CombinedState.error("Private key not found"));
      return;
    }

    EnvEntity env = await _polygonIdSdk.getEnv();

    String did = await _polygonIdSdk.identity.getDidIdentifier(
      privateKey: privateKey,
      blockchain: env.blockchain,
      network: env.network,
    );

    if (did.isEmpty) {
      emit(const CombinedState.error(
          "without an identity is impossible to remove credential"));
      return;
    }

    try {
      List<ClaimEntity> claimList = await _polygonIdSdk.credential.getClaims(
        filters: filters,
        genesisDid: did,
        privateKey: privateKey,
      );

      List<ClaimModel> claimModelList =
          claimList.map((claimEntity) => _mapper.mapFrom(claimEntity)).toList();
      emit(CombinedState.loadedClaims(claimModelList));
    } on GetClaimsException catch (_) {
      emit(const CombinedState.error("error while retrieving claims"));
    } catch (_) {
      emit(const CombinedState.error("generic error"));
    }
  }

  ///
  Future<void> _getClaimsByIds(
      GetClaimsByIdsEvent event, Emitter<CombinedState> emit) async {
    emit(const CombinedState.loading());

    List<String> ids = event.ids;

    String? privateKey =
        await SecureStorage.read(key: SecureStorageKeys.privateKey);

    if (privateKey == null) {
      emit(const CombinedState.error("Private key not found"));
      return;
    }

    EnvEntity env = await _polygonIdSdk.getEnv();

    String did = await _polygonIdSdk.identity.getDidIdentifier(
      privateKey: privateKey,
      blockchain: env.blockchain,
      network: env.network,
    );

    if (did.isEmpty) {
      emit(const CombinedState.error(
          "without an identity is impossible to remove credential"));
      return;
    }

    try {
      List<ClaimEntity> claimList =
          await _polygonIdSdk.credential.getClaimsByIds(
        claimIds: ids,
        genesisDid: did,
        privateKey: privateKey,
      );

      List<ClaimModel> claimModelList =
          claimList.map((claimEntity) => _mapper.mapFrom(claimEntity)).toList();
      emit(CombinedState.loadedClaims(claimModelList));
    } on GetClaimsException catch (_) {
      emit(const CombinedState.error("error while retrieving claims"));
    } catch (_) {
      emit(const CombinedState.error("generic error"));
    }
  }

  ///
  Future<void> _removeClaim(
      RemoveClaimEvent event, Emitter<CombinedState> emit) async {
    String id = event.id;

    String? privateKey =
        await SecureStorage.read(key: SecureStorageKeys.privateKey);

    if (privateKey == null) {
      emit(const CombinedState.error("Private key not found"));
      return;
    }

    EnvEntity env = await _polygonIdSdk.getEnv();

    String did = await _polygonIdSdk.identity.getDidIdentifier(
      privateKey: privateKey,
      blockchain: env.blockchain,
      network: env.network,
    );

    if (did.isEmpty) {
      emit(const CombinedState.error(
          "without an identity is impossible to remove credential"));
      return;
    }

    try {
      await _polygonIdSdk.credential.removeClaim(
        claimId: id,
        genesisDid: did,
        privateKey: privateKey,
      );
      add(const GetClaimsEvent());
    } on RemoveClaimsException catch (_) {
      emit(const CombinedState.error("error while removing credential"));
    } catch (_) {
      emit(const CombinedState.error("generic error"));
    }
  }

  ///
  Future<void> _removeClaims(
      RemoveClaimsEvent event, Emitter<CombinedState> emit) async {
    List<String> ids = event.ids;

    String? privateKey =
        await SecureStorage.read(key: SecureStorageKeys.privateKey);

    if (privateKey == null) {
      emit(const CombinedState.error("Private key not found"));
      return;
    }

    EnvEntity env = await _polygonIdSdk.getEnv();

    String did = await _polygonIdSdk.identity.getDidIdentifier(
      privateKey: privateKey,
      blockchain: env.blockchain,
      network: env.network,
    );

    if (did.isEmpty) {
      emit(const CombinedState.error(
          "without an identity is impossible to remove claims"));
      return;
    }
    try {
      await _polygonIdSdk.credential.removeClaims(
        claimIds: ids,
        genesisDid: did,
        privateKey: privateKey,
      );
      add(const GetClaimsEvent());
    } on RemoveClaimsException catch (_) {
      emit(const CombinedState.error("error while removing claims"));
    } catch (_) {
      emit(const CombinedState.error("generic error"));
    }
  }

  ///
  Future<void> _updateClaim(
      UpdateClaimEvent event, Emitter<CombinedState> emit) async {
    String id = event.id;
    String? issuer = event.issuer;
    String? did = event.did;
    ClaimState? state = event.state;
    String? expiration = event.expiration;
    String? type = event.type;
    Map<String, dynamic>? data = event.data;

    String? privateKey =
        await SecureStorage.read(key: SecureStorageKeys.privateKey);

    if (privateKey == null) {
      emit(const CombinedState.error("Private key not found"));
      return;
    }

    if (did == null || did.isEmpty) {
      emit(const CombinedState.error(
          "without an identity is impossible to update a credential"));
      return;
    }
    try {
      await _polygonIdSdk.credential.updateClaim(
        claimId: id,
        issuer: issuer,
        genesisDid: did,
        state: state,
        expiration: expiration,
        type: type,
        data: data,
        privateKey: privateKey,
      );

      add(const GetClaimsEvent());
    } on UpdateClaimException catch (_) {
      emit(const CombinedState.error("error while updating credential"));
    } catch (_) {
      emit(const CombinedState.error("generic error"));
    }
  }

  ///
  void _handleClickClaim(OnClickClaim event, Emitter<CombinedState> emit) {
    emit(const CombinedState.loading());
    emit(CombinedState.navigateToClaimDetail(event.claimModel));
  }

  ///
  void _handleRemoveClaimResponse(
      OnClaimDetailRemoveResponse event, Emitter<CombinedState> emit) {
    bool removed = event.removed ?? false;

    if (!removed) {
      return;
    }

    add(const GetClaimsEvent());
  }

  ///
  Future<void> _removeAllClaims(
      RemoveAllClaimsEvent event, Emitter<CombinedState> emit) async {
    emit(const CombinedState.loading());

    String? privateKey =
        await SecureStorage.read(key: SecureStorageKeys.privateKey);

    if (privateKey == null) {
      emit(const CombinedState.error("Private key not found"));
      return;
    }

    EnvEntity env = await _polygonIdSdk.getEnv();

    String did = await _polygonIdSdk.identity.getDidIdentifier(
      privateKey: privateKey,
      blockchain: env.blockchain,
      network: env.network,
    );

    if (did.isEmpty) {
      emit(const CombinedState.error(
          "without an identity is impossible to remove all claims"));
      return;
    }

    try {
      List<ClaimEntity> claimList = await _polygonIdSdk.credential.getClaims(
        genesisDid: did,
        privateKey: privateKey,
      );

      List<String> claimIds = claimList.map((claim) => claim.id).toList();
      await _polygonIdSdk.credential.removeClaims(
        claimIds: claimIds,
        genesisDid: did,
        privateKey: privateKey,
      );
      add(const GetClaimsEvent());
    } catch (_) {
      emit(const CombinedState.error("error while removing claims"));
    }
  }
}

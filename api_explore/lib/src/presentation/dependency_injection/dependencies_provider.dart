import 'dart:convert';

import 'package:get_it/get_it.dart'; // TODO understand what is the get_it library
import 'package:polygonid_flutter_sdk/common/domain/entities/env_entity.dart';
import 'package:polygonid_flutter_sdk/sdk/polygon_id_sdk.dart';
import 'package:api_explore/src/common/env.dart';
import 'package:api_explore/src/presentation/ui/splash/splash_bloc.dart';
import 'package:api_explore/utils/qr_code_parser_utils.dart';

import '../ui/home/home_bloc.dart';

final getIt = GetIt.instance;

/// Dependency Injection initializer
Future<void> init() async {
  registerEnv();
  await registerProviders();
  registerSplashDependencies();
  registerHomeDependencies();
  registerUtilities();
}

void registerEnv() {
  Map<String, dynamic> polygonMumbai = jsonDecode(Env.polygonMumbai);

  Map<String, EnvEntity> env = {
    "mumbai": EnvEntity(
      blockchain: polygonMumbai['blockchain'],
      network: polygonMumbai['network'],
      web3Url: polygonMumbai['web3Url'],
      web3RdpUrl: polygonMumbai['web3RdpUrl'],
      web3ApiKey: polygonMumbai['web3ApiKey'],
      idStateContract: polygonMumbai['idStateContract'],
      pushUrl: polygonMumbai['pushUrl'],
      ipfsUrl: polygonMumbai['ipfsUrl'],
    )
  };
  getIt.registerSingleton<Map<String, EnvEntity>>(env);
}

///
Future<void> registerProviders() async {
  await PolygonIdSdk.init(env: getIt<Map<String, EnvEntity>>()["mumbai"]);
  getIt.registerLazySingleton<PolygonIdSdk>(() => PolygonIdSdk.I);
}

/// Register utilities
void registerUtilities() {
  getIt.registerLazySingleton<QrcodeParserUtils>(
      () => QrcodeParserUtils(getIt()));
}

///
void registerHomeDependencies() {
  getIt.registerFactory(() => HomeBloc(getIt()));
}

///
void registerSplashDependencies() {
  getIt.registerFactory(() => SplashBloc());
}

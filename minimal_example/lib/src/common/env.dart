import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(varName: 'ENV_POLYGON_AMOY')
  static const String polygonAmoy = _Env.polygonAmoy;

  @EnviedField(varName: 'ENV_POLYGON_MAINNET')
  static const String polygonMainnet = _Env.polygonMainnet;
}

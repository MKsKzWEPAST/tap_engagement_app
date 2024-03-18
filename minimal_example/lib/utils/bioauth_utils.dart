import 'package:flutter/cupertino.dart';
import 'package:local_auth/local_auth.dart';
import 'package:polygonid_flutter_sdk/common/domain/domain_logger.dart';

class BiometricAuthService extends ChangeNotifier {
  final LocalAuthentication _localAuthentication = LocalAuthentication();

  LocalAuthentication get localAuthentication => _localAuthentication;

  Future<bool> authenticate() async {
    try {
      return await _localAuthentication.authenticate(
        localizedReason: 'Unlock your Wallet',
        options: const AuthenticationOptions(
          biometricOnly: true,
          useErrorDialogs: true,
        ),
      );
    } catch (e) {
      logger().e('Authentication error: $e');
      return false;
    }
  }
}
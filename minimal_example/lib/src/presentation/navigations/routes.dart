import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minimal_example/src/presentation/ui/backup_identity/widgets/backup_identity.dart';
import 'package:minimal_example/src/presentation/ui/claim_detail/widgets/claim_detail.dart';
import 'package:minimal_example/src/presentation/ui/claims/models/claim_model.dart';
import 'package:minimal_example/src/presentation/ui/combined_authclaim/widgets/combined.dart';
import 'package:minimal_example/src/presentation/ui/home/widgets/home.dart';
import 'package:minimal_example/src/presentation/ui/qrcode_scanner/widgets/qrcode_scanner.dart';
import 'package:minimal_example/src/presentation/ui/restore_identity/widgets/restore_identity.dart';
import 'package:minimal_example/src/presentation/ui/splash/widgets/splash.dart';
import 'package:secure_application/secure_gate.dart';

import 'package:minimal_example/utils/bioauth_utils.dart';
import 'package:minimal_example/utils/custom_text_styles.dart';

class Routes {
  static const String initialPath = "/";
  static const String splashPath = "/splash";
  static const String introPath = "/intro";
  static const String homePath = "/home";
  static const String qrCodeScannerPath = "/qrcode_scanner";
  static const String combinedPath = "/combined";
  static const String claimDetailPath = "/claim_detail";
  static const String backupIdentityPath = "/backup_identity";
  static const String restoreIdentityPath = "/restore_identity";

  static const double blurr = 18;
  static const double opacity = 0.5;

  ///
  static Map<String, WidgetBuilder> getRoutes(context) {
    return {
      //initialPath: _splashRoute(),
      splashPath: _splashRoute(),
      homePath: _homeRoute(),
      qrCodeScannerPath: _qrCodeScannerRoute(),
      combinedPath: _combinedRoute(),
      claimDetailPath: _claimDetailPath(),
      backupIdentityPath: _backupIdentityRoute(),
      restoreIdentityPath: _restoreIdentityRoute(),
    };
  }

  ///
  static WidgetBuilder _splashRoute() {
    return (BuildContext context) => const SplashScreen();
  }

  ///
  static WidgetBuilder _homeRoute() {
    return (BuildContext context) => const HomeScreen();
  }


  ///
  static WidgetBuilder _qrCodeScannerRoute() {
    return (BuildContext context) => const QRCodeScannerPage();
  }


  static WidgetBuilder _combinedRoute() {

    return (BuildContext context) {
      return SecureGate(
        blurr: blurr,
        opacity: opacity,
        child: CombinedScreen(),
        lockedBuilder: (context, secureNotifier) {
          Future.sync(() async {
            await BiometricAuthService()
                .localAuthentication
                .stopAuthentication();
            bool success = await BiometricAuthService().authenticate();
            if (success) {
              secureNotifier?.authSuccess(unlock: true);
            } else {
              secureNotifier?.authFailed(unlock: false);
            }
          });

          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Authenticating...", // TODO fix style
                  style: CustomTextStyles.titleTextStyle,
                ),
                SizedBox(height: 20),
                CircularProgressIndicator(),
              ],
            ),
          );
        },
      );
    };
  }

  ///
  static WidgetBuilder _claimDetailPath() {
    return (BuildContext context) {
      final args = ModalRoute.of(context)!.settings.arguments as ClaimModel;
      return ClaimDetailScreen(claimModel: args);
    };
  }

  ///
  static WidgetBuilder _backupIdentityRoute() {
    return (BuildContext context) => const BackupIdentityScreen();
  }

  ///
  static WidgetBuilder _restoreIdentityRoute() {
    return (BuildContext context) => const RestoreIdentityScreen();
  }
}

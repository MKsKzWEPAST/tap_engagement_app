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

import '../ui/pay_n_kyc/widgets/flow.dart';

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
  static const String kycFlow = "/kyc_flow";

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
      kycFlow: _kycFlowRoute()

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
    return (BuildContext context) => CombinedScreen();
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

  ///
  static WidgetBuilder _kycFlowRoute() {
    return (BuildContext context) => KycFlowScreen();
  }
}

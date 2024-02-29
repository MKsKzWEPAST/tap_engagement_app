import 'package:flutter/widgets.dart';

import 'package:api_explore/src/presentation/ui/home/widgets/home.dart';
import 'package:api_explore/src/presentation/ui/splash/widgets/splash.dart';

class Routes {
  static const String initialPath = "/";
  static const String splashPath = "/splash";
  static const String introPath = "/intro";
  static const String homePath = "/home";
  static const String claimsPath = "/claims";
  static const String qrCodeScannerPath = "/qrcode_scanner";
  static const String authPath = "/auth";
  static const String claimDetailPath = "/claim_detail";
  static const String signMessagePath = "/sign_message";
  static const String checkIdentityValidityPath = "/check_identity_validity";
  static const String backupIdentityPath = "/backup_identity";
  static const String restoreIdentityPath = "/restore_identity";

  ///
  static Map<String, WidgetBuilder> getRoutes(context) {
    return {
      initialPath: _splashRoute(),
      splashPath: _splashRoute(),
      homePath: _homeRoute(),
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

}

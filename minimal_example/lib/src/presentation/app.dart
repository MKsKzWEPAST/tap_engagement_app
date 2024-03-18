import 'dart:async';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

import 'package:minimal_example/src/presentation/navigations/routes.dart';
import 'package:minimal_example/src/presentation/ui/splash/widgets/splash.dart';
import 'package:minimal_example/utils/custom_colors.dart';
import 'package:minimal_example/utils/custom_strings.dart';
import 'package:minimal_example/utils/custom_text_styles.dart';

import 'package:polygonid_flutter_sdk/common/domain/domain_logger.dart';
import 'package:secure_application/secure_application.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  StreamSubscription<bool>? subLock;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SecureApplication(
        nativeRemoveDelay: 700,
        child: Builder(
          builder: (context) {
            SecureApplicationProvider.of(context)?.secure();
            SecureApplicationProvider.of(context)?.lock();
            return MaterialApp(
              title: CustomStrings.appTitle,
              home: const SplashScreen(),
              routes: Routes.getRoutes(context),
              navigatorKey: navigatorKey,
              theme: ThemeData(
                primarySwatch: CustomColors.primaryWhite,
                buttonTheme: const ButtonThemeData(
                  buttonColor: CustomColors.primaryOrange,
                  textTheme: ButtonTextTheme.accent,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

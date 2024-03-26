import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:polygonid_flutter_sdk/sdk/polygon_id_sdk.dart';
import 'package:minimal_example/src/presentation/dependency_injection/dependencies_provider.dart'
    as di;

import 'package:minimal_example/src/presentation/app.dart';
import 'package:uni_links/uni_links.dart';
import 'dart:async';

Future<void> main() async {
  //Dependency Injection initialization
  await di.init();
  PolygonIdSdk.I.switchLog(enabled: true);

  // App UI locked in portrait mode
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  if (true) { // todo: replace later with "wallet initialized with did and bio set-up"

  }

  runApp(const App());


}


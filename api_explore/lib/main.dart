import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:api_explore/src/presentation/dependency_injection/dependencies_provider.dart'
    as di;
import 'package:polygonid_flutter_sdk/sdk/polygon_id_sdk.dart';

import 'src/presentation/ui/app.dart';


Future<void> main() async {
  await di.init();

  PolygonIdSdk.I.switchLog(enabled: true);

  // App UI locked in portrait mode
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const App());
}

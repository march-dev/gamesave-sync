import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;

import 'package:flutter_simple_dependency_injection/injector.dart';

import 'services/ioc.provider.dart';
import 'features/login/login.page.dart';
import 'services/navigation.service.dart';
import 'features/startup/startup.page.dart';
import 'features/dashboard/dashboard.page.dart';

void main() {
  // See https://github.com/flutter/flutter/wiki/Desktop-shells#target-platform-override
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;

  IoCProvider().initialize();
  runApp(GameSaveSyncApp());
}

class GameSaveSyncApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GameSave Sync',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        canvasColor: Colors.blueGrey[900],
        backgroundColor: Colors.blueGrey[900],
        scaffoldBackgroundColor: Colors.blueGrey[900],
        visualDensity: VisualDensity.compact,

        // See https://github.com/flutter/flutter/wiki/Desktop-shells#fonts
        fontFamily: 'Roboto',
      ),
      navigatorKey:
          Injector.getInjector().get<NavigationService>().navigatorKey,
      routes: {
        StartUpPage.route: (context) => StartUpPage(),
        LoginPage.route: (context) => LoginPage(),
        DashboardPage.route: (context) => DashboardPage(),
      },
    );
  }
}

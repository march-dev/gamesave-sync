import 'package:flutter/material.dart';

import 'package:flutter_simple_dependency_injection/injector.dart';

import 'startup.bloc.dart';
import '../login/login.page.dart';
import '../dashboard/dashboard.page.dart';
import '../../services/auth.service.dart';
import '../../services/navigation.service.dart';

class StartUpPage extends StatefulWidget {
  /// named route of [StartUpPage]
  ///
  /// `'/'`
  static String route = '/';

  @override
  _StartUpPageState createState() => _StartUpPageState();
}

class _StartUpPageState extends State<StartUpPage> {
  final StartUpBloc bloc = StartUpBloc(
    loginRoute: LoginPage.route,
    dashboardRoute: DashboardPage.route,
    authService: Injector.getInjector().get<AuthService>(),
    navigationService: Injector.getInjector().get<NavigationService>(),
  );

  @override
  void initState() {
    super.initState();
    bloc.startup();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Loading...',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:flutter_simple_dependency_injection/injector.dart';

import 'startup.bloc.dart';
import '../features.dart';
import '../../widgets/widgets.dart';
import '../../services/services.dart';

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
    return Background(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Text(
            'Loading, please wait...',
            style: TextStyle(color: Colors.grey[200]),
          ),
        ),
      ),
    );
  }
}

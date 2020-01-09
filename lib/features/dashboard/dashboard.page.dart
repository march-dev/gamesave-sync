import 'package:flutter/material.dart';

import 'package:flutter_simple_dependency_injection/injector.dart';

import '../dashboard/dashboard.bloc.dart';
import '../../services/navigation.service.dart';

class DashboardPage extends StatefulWidget {
  /// named route of [DashboardPage]
  ///
  /// `'/dashboard'`
  static String route = '/dashboard';

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final DashboardBloc bloc = DashboardBloc(
    settingsRoute: null,
    navigationService: Injector.getInjector().get<NavigationService>(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              // TODO
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Dashboard Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

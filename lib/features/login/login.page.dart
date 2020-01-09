import 'package:flutter/material.dart';

import 'package:flutter_simple_dependency_injection/injector.dart';

import '../login/login.bloc.dart';
import '../dashboard/dashboard.page.dart';
import '../../services/auth.service.dart';
import '../../services/navigation.service.dart';

class LoginPage extends StatefulWidget {
  /// named route of [LoginPage]
  ///
  /// `'/login'`
  static String route = '/login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginBloc bloc = LoginBloc(
    dashboardRoute: DashboardPage.route,
    authService: Injector.getInjector().get<AuthService>(),
    navigationService: Injector.getInjector().get<NavigationService>(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Login Page',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 32),
          Center(
            child: RaisedButton(
              child: Text('LOGIN'),
              onPressed: () => bloc.login(),
            ),
          ),
        ],
      ),
    );
  }
}

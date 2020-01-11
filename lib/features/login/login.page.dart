import 'package:flutter/material.dart';

import 'package:flutter_simple_dependency_injection/injector.dart';

import '../login/login.bloc.dart';
import '../../widgets/widgets.dart';
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
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 300,
          ),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  InputForm(
                    hintText: 'my@email.com',
                    labelText: 'E-mail',
                  ),
                  const SizedBox(height: 24),
                  InputForm(
                    labelText: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: RaisedButton(
                      child: Text('LOGIN'),
                      onPressed: () => bloc.login(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

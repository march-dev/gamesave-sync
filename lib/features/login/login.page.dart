import 'package:flutter/material.dart';

import 'package:flutter_simple_dependency_injection/injector.dart';

import 'login.bloc.dart';
import '../features.dart';
import '../../widgets/widgets.dart';
import '../../services/services.dart';

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
    signupRoute: SignupPage.route,
    dashboardRoute: DashboardPage.route,
    authService: Injector.getInjector().get<AuthService>(),
    navigationService: Injector.getInjector().get<NavigationService>(),
  );

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: AuthForm(
          title: 'Login',
          children: [
            InputForm(
              hintText: 'my@email.com',
              labelText: 'E-mail',
              prefixIcon: Icons.mail_outline,
            ),
            const SizedBox(height: 24),
            InputForm(
              labelText: 'Password',
              obscureText: true,
              prefixIcon: Icons.lock_outline,
            ),
            const SizedBox(height: 24),
            Button(
              child: Text('LOGIN'),
              onPressed: () => bloc.login(),
            ),
            const SizedBox(height: 64),
            Row(
              children: <Widget>[
                Expanded(child: Divider(color: Colors.grey[600])),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don\'t have an account? ',
                        ),
                        TextSpan(
                          text: 'Create one!',
                          style: TextStyle(
                            color: Colors.blue[200],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    style: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                Expanded(child: Divider(color: Colors.grey[600])),
              ],
            ),
            const SizedBox(height: 64),
            Button.outlined(
              child: Text('SIGN UP'),
              onPressed: () => bloc.signUp(),
            ),
          ],
        ),
      ),
    );
  }
}

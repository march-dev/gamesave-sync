import 'package:flutter/material.dart';

import 'package:flutter_simple_dependency_injection/injector.dart';

import 'signup.bloc.dart';
import '../features.dart';
import '../../widgets/widgets.dart';
import '../../services/services.dart';

class SignupPage extends StatefulWidget {
  /// named route of [SignupPage]
  ///
  /// `'/register'`
  static String route = '/register';

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final SignupBloc bloc = SignupBloc(
    loginRoute: LoginPage.route,
    authService: Injector.getInjector().get<AuthService>(),
    navigationService: Injector.getInjector().get<NavigationService>(),
  );

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: TransparentAppBar(leading: BackButton()),
        body: AuthForm(
          title: 'Sign Up',
          children: [
            InputForm(
              hintText: 'my@email.com',
              labelText: 'E-mail',
              prefixIcon: Icons.mail_outline,
            ),
            const SizedBox(height: 32),
            InputForm(
              labelText: 'Password',
              obscureText: true,
              prefixIcon: Icons.lock_open,
            ),
            const SizedBox(height: 12),
            InputForm(
              labelText: 'Confirm Password',
              obscureText: true,
              prefixIcon: Icons.lock_outline,
            ),
            const SizedBox(height: 64),
            Button(
              child: Text('SIGN UP'),
              onPressed: () => bloc.signUp(),
              preset: ColorPreset.blueRaised,
            ),
          ],
        ),
      ),
    );
  }
}

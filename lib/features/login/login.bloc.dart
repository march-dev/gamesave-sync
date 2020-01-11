import 'package:flutter/foundation.dart';

import '../../services/services.dart';

class LoginBloc implements BaseBloc {
  const LoginBloc({
    @required this.signupRoute,
    @required this.dashboardRoute,
    @required this.authService,
    @required this.navigationService,
  });

  final String signupRoute;
  final String dashboardRoute;
  final AuthService authService;
  final NavigationService navigationService;

  void login() async {
    final result = await authService.login();

    if (result) {
      navigationService.pushNamed(dashboardRoute);
    } else {
      // TODO
    }
  }

  void signUp() => navigationService.pushNamed(signupRoute);

  @override
  void dispose() {}
}

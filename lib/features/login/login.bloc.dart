import 'package:flutter/foundation.dart';

import '../../services/base.bloc.dart';
import '../../services/auth.service.dart';
import '../../services/navigation.service.dart';

class LoginBloc implements BaseBloc {
  const LoginBloc({
    @required this.dashboardRoute,
    @required this.authService,
    @required this.navigationService,
  });

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

  @override
  void dispose() {}
}

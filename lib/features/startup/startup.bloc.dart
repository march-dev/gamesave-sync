import 'package:flutter/foundation.dart';

import '../../services/base.bloc.dart';
import '../../services/auth.service.dart';
import '../../services/navigation.service.dart';

class StartUpBloc implements BaseBloc {
  const StartUpBloc({
    @required this.loginRoute,
    @required this.dashboardRoute,
    @required this.authService,
    @required this.navigationService,
  });

  final String loginRoute;
  final String dashboardRoute;
  final AuthService authService;
  final NavigationService navigationService;

  Future<Null> startup() async {
    if (await authService.isAuthorized) {
      navigationService.pushNamed(dashboardRoute);
    } else {
      navigationService.pushNamed(loginRoute);
    }
  }

  @override
  void dispose() {}
}

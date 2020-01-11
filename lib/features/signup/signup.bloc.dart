import 'package:flutter/foundation.dart';

import '../../services/services.dart';

class SignupBloc implements BaseBloc {
  const SignupBloc({
    @required this.loginRoute,
    @required this.authService,
    @required this.navigationService,
  });

  final String loginRoute;
  final AuthService authService;
  final NavigationService navigationService;

  void signUp() async {
    final result = await authService.signUp();

    if (result) {
      navigationService.pushNamed(loginRoute);
    } else {
      // TODO
    }
  }

  @override
  void dispose() {}
}

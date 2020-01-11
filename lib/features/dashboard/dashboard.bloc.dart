import 'package:flutter/foundation.dart';

import '../../services/services.dart';

class DashboardBloc implements BaseBloc {
  const DashboardBloc({
    @required this.settingsRoute,
    @required this.navigationService,
  });

  final String settingsRoute;
  final NavigationService navigationService;

  void toSettings() => navigationService.pushNamed(settingsRoute);

  @override
  void dispose() {}
}

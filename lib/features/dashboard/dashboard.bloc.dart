import 'package:flutter/foundation.dart';

import '../../services/navigation.service.dart';

class DashboardBloc {
  const DashboardBloc({
    @required this.settingsRoute,
    @required this.navigationService,
  });

  final String settingsRoute;
  final NavigationService navigationService;

  void toSettings() => navigationService.pushNamed(settingsRoute);
}

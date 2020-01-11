import 'package:flutter/foundation.dart';

import '../../services/base.bloc.dart';
import '../../services/navigation.service.dart';

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

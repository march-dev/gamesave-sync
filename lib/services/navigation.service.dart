import 'package:flutter/widgets.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<T> pushNamed<T>(String routeName) =>
      navigatorKey.currentState.pushNamed<T>(routeName);
}

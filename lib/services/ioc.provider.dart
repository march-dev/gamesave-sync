import 'package:flutter_simple_dependency_injection/injector.dart';

import 'auth.service.dart';
import 'navigation.service.dart';

class IoCProvider {
  factory IoCProvider() => _instance;
  IoCProvider._();

  static final _instance = IoCProvider._();

  bool initialize() {
    try {
      final injector = Injector.getInjector();

      injector.map<NavigationService>((i) => NavigationService(),
          isSingleton: true);
      injector.map<AuthService>((i) => AuthService(), isSingleton: true);

      // injector.mapWithParams<SomeOtherType>((i, p) => SomeOtherType(p['id']));

      return true;
    } catch (e) {
      return false;
    }
  }
}

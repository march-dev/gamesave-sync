class AuthService {
  Future<bool> get isAuthorized async {
    await Future.delayed(Duration(seconds: 1));
    return false;
  }

  bool login() {
    // TODO
    return true;
  }
}

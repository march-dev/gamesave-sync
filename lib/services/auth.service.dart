class AuthService {
  Future<bool> get isAuthorized async {
    await Future.delayed(Duration(seconds: 3));
    return false;
  }

  Future<bool> login() async {
    // TODO
    return true;
  }

  Future<bool> signUp() async {
    // TODO
    return true;
  }
}

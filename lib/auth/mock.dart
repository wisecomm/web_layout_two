import 'auth.dart';

class MockAuthService implements Auth {
  @override
  Future<bool> get isSignedIn async => false;

  @override
  Future<User> signIn(String email, String password) async {
    return MockUser();
  }

  @override
  Future<void> signOut() {
    return Future.value();
  }
}

class MockUser implements User {
  @override
  String get uid => "123";
}

import 'auth_service.dart';

class FirebaseAuth implements AuthService {
  @override
  Future<void> signIn({
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<void> signUp(
      {required String email,
      required String password,
      required String username,
      required String bio}) {
    throw UnimplementedError();
  }
}

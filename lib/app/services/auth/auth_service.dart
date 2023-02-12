abstract class AuthService {
  Future<void> signUp({
    required String email,
    required String password,
    required String username,
    required String bio,
  });

  Future<void> signIn({
    required String email,
    required String password,
  });
}

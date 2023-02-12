import 'package:get_it/get_it.dart';
import 'package:instagram_clone/app/services/auth/firebase_auth.dart';

import 'auth/auth_service.dart';
import '../modules/auth/sigin/signin_controller.dart';
import '../modules/auth/signup/signup_controller.dart';

final locator = GetIt.instance;

void setupDependencies() {
  locator.registerLazySingleton<AuthService>(() => FirebaseAuth());
  locator.registerFactory<SignInController>(
      () => SignInController(locator.get<AuthService>()));
  locator.registerFactory<SignUpController>(
      () => SignUpController(locator.get<AuthService>()));
}

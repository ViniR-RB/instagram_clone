import 'package:flutter/material.dart';
import 'package:instagram_clone/app/modules/auth/sigin/signin_state.dart';

import '../../../services/auth/auth_service.dart';

class SignInController extends ChangeNotifier {
  final AuthService _service;

  SignInController(this._service);
  SignInState _state = SignInInitState();

  SignInState get state => _state;

  void _changeState(SignInState newState) {
    _state = newState;
    notifyListeners(); // Notifica que está ouvindo
  }

  Future<void> signIn(
      {required String name,
      required String email,
      required String password}) async {
    _changeState(SignInLoadingState());
    try {
      await _service.signIn(email: email, password: password);
      _changeState(SignInSucessState());
    } catch (e) {
      _changeState(SignInErrorState(e.toString()));
    }
  }
}

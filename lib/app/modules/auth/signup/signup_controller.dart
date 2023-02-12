import 'package:flutter/material.dart';
import 'package:instagram_clone/app/modules/auth/signup/signup_state.dart';

import '../../../services/auth/auth_service.dart';

class SignUpController extends ChangeNotifier {
  final AuthService _service;

  SignUpController(this._service);
  SignUpState _state = SignUpInitState();

  SignUpState get state => _state;

  void _changeState(SignUpState newState) {
    _state = newState;
    notifyListeners(); // Notifica que está ouvindo
  }

  Future<void> signUp(
      {required String name,
      required String email,
      required String password}) async {
    _changeState(SignUpLoadingState());
    try {
      await _service.signUp(
          email: email, password: password, bio: '', username: '');
      _changeState(SignUpSucessState());
    } catch (e) {
      _changeState(SignUpErrorState(e.toString()));
    }
  }
}

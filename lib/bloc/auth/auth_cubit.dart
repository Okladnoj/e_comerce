import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../base/bloc/base_cubit.dart';
import '../../models/login/login_request_model.dart';
import '../../services/auth/auth_service.dart';
import '../../services/token/token_service.dart';

part 'auth_state.dart';

@injectable
class AuthCubit extends BaseCubit<AuthState> {
  final AuthService _authService;
  final TokenService _tokenService;

  AuthCubit(
    this._authService,
    this._tokenService,
  ) : super(const AuthState());

  @override
  void handleError(String message) {
    emit(state.copyWith(
      status: StateStatus.error,
      message: message,
    ));
  }

  Future<void> init() async {
    final token = await safeAction(() async {
      return _tokenService.getToken();
    });

    emit(state.copyWith(
      status: StateStatus.info,
      authorized: token != null,
    ));

    emit(state.copyWith(
      status: StateStatus.loaded,
    ));
  }

  Future<void> login(LoginRequestModel loginModel) async {
    emit(state.copyWith(status: StateStatus.refresh));
    final result = await safeAction(() async {
      return _authService.login(loginModel);
    });

    emit(state.copyWith(status: StateStatus.loaded));

    final token = result?.token;
    if (token == null) return;

    await _tokenService.saveToken(token);

    emit(state.copyWith(
      status: StateStatus.info,
      authorized: true,
    ));
  }

  Future<void> logOut() async {
    await safeAction(() async {
      return _tokenService.removeToken();
    });

    emit(state.copyWith(
      status: StateStatus.info,
      authorized: false,
    ));

    emit(state.copyWith(
      status: StateStatus.loaded,
    ));
  }

  Future<void> resetLoginError() async {
    emit(state.copyWith(
      status: StateStatus.loaded,
      message: '',
    ));
  }
}

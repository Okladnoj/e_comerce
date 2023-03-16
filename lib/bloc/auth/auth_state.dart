part of 'auth_cubit.dart';

@immutable
class AuthState extends BaseState {
  final bool authorized;
  final bool showOnboarding;
  final LoginRequestModel loginModel;

  const AuthState({
    super.status,
    super.message,
    this.authorized = false,
    this.showOnboarding = true,
    this.loginModel = const LoginRequestModel(),
  });

  @override
  List<Object?> get props {
    return [
      ...super.props,
      authorized,
      showOnboarding,
      loginModel,
    ];
  }

  AuthState copyWith({
    StateStatus? status,
    String? message,
    bool? authorized,
    bool? showOnboarding,
    LoginRequestModel? loginModel,
  }) {
    return AuthState(
      status: status ?? super.status,
      message: message ?? super.message,
      authorized: authorized ?? this.authorized,
      showOnboarding: showOnboarding ?? this.showOnboarding,
      loginModel: loginModel ?? this.loginModel,
    );
  }
}

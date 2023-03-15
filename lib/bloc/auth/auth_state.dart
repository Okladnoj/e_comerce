part of 'auth_cubit.dart';

@immutable
class AuthState extends BaseState {
  final bool authorized;
  final bool showOnboarding;

  const AuthState({
    super.status,
    super.message,
    this.authorized = false,
    this.showOnboarding = true,
  });

  @override
  List<Object?> get props {
    return [
      ...super.props,
      authorized,
      showOnboarding,
    ];
  }

  AuthState copyWith({
    StateStatus? status,
    String? message,
    bool? authorized,
    bool? showOnboarding,
  }) {
    return AuthState(
      status: status ?? super.status,
      message: message ?? super.message,
      authorized: authorized ?? this.authorized,
      showOnboarding: showOnboarding ?? this.showOnboarding,
    );
  }
}

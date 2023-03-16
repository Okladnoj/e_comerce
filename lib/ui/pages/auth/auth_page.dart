import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../base/bloc/base_cubit.dart';
import '../../../bloc/auth/auth_cubit.dart';
import '../../../di/di.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/localization_helper.dart';
import '../../../routes/router.dart';
import '../../../themes/app_theme.dart';
import 'views/password_field.dart';
import 'views/single_line_field.dart';

class AuthPage extends StatefulWidget with AutoRouteWrapper {
  const AuthPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (_) => locator()..init(),
      child: this,
    );
  }

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  AuthCubit get _cubit => context.read();
  AppLocalizations get _strings => context.strings;
  ColorScheme get _colorScheme => context.colorScheme;
  TextTheme get _textTheme => context.textTheme;

  Future<void> _onLogin() async => _cubit.login();

  Future<void> _onForgotPassword() async {
    context.router.replace(const ProductsRoute());
  }

  @override
  void initState() {
    super.initState();

    _usernameController.addListener(() {
      final value = _usernameController.text;
      _cubit.setUserName(value);
    });
    _passwordController.addListener(() {
      final value = _passwordController.text;
      _cubit.setPassword(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state.authorized) {
          context.router.replace(const ProductsRoute());
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: _colorScheme.surface,
          body: _buildContent(state),
        );
      },
    );
  }

  Widget _buildContent(AuthState state) {
    final error = state.status == StateStatus.error;

    if (error) return _buildError();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 160),
          Assets.images.eComerce.image(),
          const SizedBox(height: 80),
          _buildUserName(),
          const SizedBox(height: 28),
          _buildPasswordField(state),
          _buildForgotPassword(),
          const SizedBox(height: 32),
          _buildLoginButton(state),
        ],
      ),
    );
  }

  Widget _buildUserName() {
    return SingleLineField(
      controller: _usernameController,
      hintText: _strings.userName,
      textInputType: TextInputType.emailAddress,
    );
  }

  Widget _buildPasswordField(AuthState state) {
    final message = state.message.isNotEmpty ? state.message : null;
    return PasswordField(
      controller: _passwordController,
      hintText: _strings.passwordHint,
      errorText: message,
    );
  }

  Widget _buildForgotPassword() {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: _onForgotPassword,
        child: Text(
          _strings.forgotPassword,
          style: _textTheme.bodyMedium?.copyWith(
            color: _colorScheme.primary,
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton(AuthState state) {
    final valid = state.loginModel.valid;
    return OutlinedButton(
      onPressed: valid ? _onLogin : null,
      style: OutlinedButton.styleFrom(
        backgroundColor: valid //
            ? _colorScheme.primary
            : _colorScheme.secondaryContainer,
      ),
      child: Center(
        child: Text(
          _strings.logIn,
          style: _textTheme.bodyMedium?.copyWith(
            color: _colorScheme.surface,
          ),
        ),
      ),
    );
  }

  Widget _buildError() {
    return Builder(
      builder: (context) {
        final strings = context.strings;

        return Center(
          child: Text(strings.oops),
        );
      },
    );
  }
}

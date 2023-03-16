import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../base/bloc/base_cubit.dart';
import '../../../bloc/auth/auth_cubit.dart';
import '../../../di/di.dart';
import '../../../l10n/localization_helper.dart';
import '../../../routes/router.dart';

class AuthPage extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (_) => locator()..init(),
      child: this,
    );
  }

  const AuthPage({super.key});

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
          body: _buildContent(state),
        );
      },
    );
  }

  Widget _buildContent(AuthState state) {
    final error = state.status == StateStatus.error;

    if (error) return _buildError();

    return _buildAuthButton();
  }

  Widget _buildAuthButton() {
    return Builder(builder: (context) {
      final strings = context.strings;

      return Center(
        child: TextButton(
          onPressed: () => context.router.replace(const ProductsRoute()),
          child: Text(strings.logIn),
        ),
      );
    });
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

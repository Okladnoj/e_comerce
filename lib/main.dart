import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'bloc/app_controller/app_controller_cubit.dart';
import 'di/di.dart';
import 'e_comers_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies(const Environment(Environment.dev));

  runApp(
    BlocProvider<AppControllerCubit>(
      create: (_) => locator()..init(),
      child: EComersApp(router: locator()),
    ),
  );
}

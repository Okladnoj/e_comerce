import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/pages/auth/auth_page.dart';
import '../ui/pages/products/products_page.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: 'auth',
      page: AuthPage,
      initial: true,
    ),
    AutoRoute(
      path: 'products',
      page: ProductsPage,
    ),
  ],
)
class AppRouter extends _$AppRouter {}

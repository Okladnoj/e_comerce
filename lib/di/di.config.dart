// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:e_comerce/api/dio/dio_api.dart' as _i4;
import 'package:e_comerce/api/interceptors/api_interceptors.dart' as _i7;
import 'package:e_comerce/api/retrofit/auth/auth_api.dart' as _i13;
import 'package:e_comerce/api/retrofit/products/products_api.dart' as _i10;
import 'package:e_comerce/bloc/app_controller/app_controller_cubit.dart'
    as _i12;
import 'package:e_comerce/bloc/auth/auth_cubit.dart' as _i16;
import 'package:e_comerce/bloc/products/products_cubit.dart' as _i15;
import 'package:e_comerce/routes/router.dart' as _i3;
import 'package:e_comerce/services/auth/auth_service.dart' as _i14;
import 'package:e_comerce/services/locale/locale_service.dart' as _i9;
import 'package:e_comerce/services/products/products_service.dart' as _i11;
import 'package:e_comerce/services/token/token_service.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../api/dio/dio_api.dart' as _i20;
import '../api/retrofit/auth/auth_api.dart' as _i19;
import '../api/retrofit/products/products_api.dart' as _i18;
import '../routes/module/route_module.dart' as _i21;
import 'modules/di_module.dart' as _i17;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final routeModule = _$RouteModule();
  final dioModule = _$DioModule();
  final diModule = _$DiModule();
  final productsApiModule = _$ProductsApiModule();
  final authApiModule = _$AuthApiModule();
  gh.lazySingleton<_i3.AppRouter>(() => routeModule.router());
  gh.lazySingleton<_i4.EmptyDio>(() => dioModule.emptyClient());
  await gh.factoryAsync<_i5.SharedPreferences>(
    () => diModule.prefs,
    preResolve: true,
  );
  gh.factory<_i6.TokenService>(
      () => _i6.TokenService(gh<_i5.SharedPreferences>()));
  gh.lazySingleton<_i7.ApiInterceptor>(
      () => _i7.ApiInterceptor(gh<_i6.TokenService>()));
  gh.lazySingleton<_i8.Dio>(() => dioModule.client(gh<_i7.ApiInterceptor>()));
  gh.factory<_i9.LocaleService>(
      () => _i9.LocaleService(gh<_i5.SharedPreferences>()));
  gh.lazySingleton<_i10.ProductsApi>(
      () => productsApiModule.getInstance(gh<_i8.Dio>()));
  gh.lazySingleton<_i11.ProductsService>(
      () => _i11.ProductsService(gh<_i10.ProductsApi>()));
  gh.factory<_i12.AppControllerCubit>(
      () => _i12.AppControllerCubit(gh<_i9.LocaleService>()));
  gh.lazySingleton<_i13.AuthApi>(
      () => authApiModule.getInstance(gh<_i8.Dio>()));
  gh.lazySingleton<_i14.AuthService>(
      () => _i14.AuthService(gh<_i13.AuthApi>()));
  gh.factory<_i15.ProductsCubit>(() => _i15.ProductsCubit(
        gh<_i11.ProductsService>(),
        gh<_i6.TokenService>(),
      ));
  gh.factory<_i16.AuthCubit>(() => _i16.AuthCubit(
        gh<_i14.AuthService>(),
        gh<_i6.TokenService>(),
      ));
  return getIt;
}

class _$DiModule extends _i17.DiModule {}

class _$ProductsApiModule extends _i18.ProductsApiModule {}

class _$AuthApiModule extends _i19.AuthApiModule {}

class _$DioModule extends _i20.DioModule {}

class _$RouteModule extends _i21.RouteModule {}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:e_comerce/api/dio/dio_api.dart' as _i3;
import 'package:e_comerce/api/interceptors/api_interceptors.dart' as _i6;
import 'package:e_comerce/api/retrofit/auth/auth_api.dart' as _i9;
import 'package:e_comerce/api/retrofit/products/products_api.dart' as _i8;
import 'package:e_comerce/services/auth/auth_service.dart' as _i10;
import 'package:e_comerce/services/token/token_service.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../api/dio/dio_api.dart' as _i12;
import '../api/retrofit/auth/auth_api.dart' as _i11;
import '../api/retrofit/products/products_api.dart' as _i13;
import 'modules/di_module.dart' as _i14;

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
  final dioModule = _$DioModule();
  final diModule = _$DiModule();
  final projectsApiModule = _$ProjectsApiModule();
  final authApiModule = _$AuthApiModule();
  gh.lazySingleton<_i3.EmptyDio>(() => dioModule.emptyClient());
  await gh.factoryAsync<_i4.SharedPreferences>(
    () => diModule.prefs,
    preResolve: true,
  );
  gh.factory<_i5.TokenService>(
      () => _i5.TokenService(gh<_i4.SharedPreferences>()));
  gh.lazySingleton<_i6.ApiInterceptor>(
      () => _i6.ApiInterceptor(gh<_i5.TokenService>()));
  gh.lazySingleton<_i7.Dio>(() => dioModule.client(gh<_i6.ApiInterceptor>()));
  gh.lazySingleton<_i8.ProjectsApi>(
      () => projectsApiModule.getInstance(gh<_i7.Dio>()));
  gh.lazySingleton<_i9.AuthApi>(() => authApiModule.getInstance(gh<_i7.Dio>()));
  gh.lazySingleton<_i10.AuthService>(() => _i10.AuthService(gh<_i9.AuthApi>()));
  return getIt;
}

class _$AuthApiModule extends _i11.AuthApiModule {}

class _$DioModule extends _i12.DioModule {}

class _$ProjectsApiModule extends _i13.ProjectsApiModule {}

class _$DiModule extends _i14.DiModule {}

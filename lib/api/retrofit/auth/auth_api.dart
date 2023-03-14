import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/login/login_request_model.dart';
import '../../../models/login/login_response_model.dart';

part 'auth_api.g.dart';

@module
abstract class AuthApiModule {
  @lazySingleton
  AuthApi getInstance(Dio dio) => AuthApi(dio);
}

@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio, {String baseUrl}) = _AuthApi;

  @POST('/auth/login')
  Future<LoginResponseModel> login(@Body() LoginRequestModel request);

  @POST('/logout')
  // TODO: change when Response model will be available
  Future logout();
}

import 'package:injectable/injectable.dart';

import '../../api/retrofit/auth/auth_api.dart';
import '../../models/login/login_request_model.dart';
import '../../models/login/login_response_model.dart';

@lazySingleton
class AuthService {
  final AuthApi _authApi;

  const AuthService(this._authApi);

  Future<LoginResponseModel> login(LoginRequestModel request) {
    // TODO: should be implemented errors wrapper
    return _authApi.login(request);
  }

  Future<void> logout() async {
    // TODO: should be implemented errors wrapper
    return _authApi.logout();
  }
}

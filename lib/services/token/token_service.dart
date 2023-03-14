
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class TokenService {
  static const _themeKey = 'token';
  final SharedPreferences _storage;

  const TokenService(this._storage);

  String? getToken() {
    final result = _storage.getString(_themeKey);
    return result;
  }

  Future<bool> saveToken(String token) async {
    return _storage.setString(_themeKey, token);
  }

  Future<bool> removeToken() async {
    return _storage.remove(_themeKey);
  }
}

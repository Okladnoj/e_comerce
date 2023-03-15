import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class TokenService {
  static const _storageKey = 'token';
  final SharedPreferences _storage;

  const TokenService(this._storage);

  String? getToken() {
    final result = _storage.getString(_storageKey);
    return result;
  }

  Future<bool> saveToken(String token) async {
    return _storage.setString(_storageKey, token);
  }

  Future<bool> removeToken() async {
    return _storage.remove(_storageKey);
  }
}

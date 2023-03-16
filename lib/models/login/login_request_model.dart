import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_model.freezed.dart';
part 'login_request_model.g.dart';

@freezed
class LoginRequestModel with _$LoginRequestModel {
  const LoginRequestModel._();

  const factory LoginRequestModel({
    @Default('') String username,
    @Default('') String password,
  }) = _LoginRequestModel;

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);

  bool get valid {
    return [
      username.isNotEmpty,
      password.isNotEmpty,
    ].every((element) => element);
  }
}

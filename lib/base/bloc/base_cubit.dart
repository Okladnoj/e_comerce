import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'base_state.dart';

abstract class BaseCubit<State extends BaseState> extends Cubit<State> {
  BaseCubit(State initialState) : super(initialState);

  void handleError(String message);

  Future<T?> safeAction<T>(
    AsyncValueGetter<T> callback,
  ) async {
    try {
      return await callback();
    } catch (exception) {
      log(exception.toString());
      if (exception is DioError) {
        handleError('${exception.response?.data ?? exception.message}');
        return null;
      }
      handleError('$exception');
      return null;
    }
  }
}

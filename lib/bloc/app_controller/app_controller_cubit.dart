import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../base/bloc/base_cubit.dart';
import '../../gen/fonts.gen.dart';
import '../../l10n/localization_helper.dart';
import '../../services/locale/locale_service.dart';
import '../../themes/app_theme.dart';

part 'app_controller_state.dart';

@injectable
class AppControllerCubit extends BaseCubit<AppControllerState> {
  final LocaleService _localeService;

  AppControllerCubit(
    this._localeService,
  ) : super(const AppControllerState());

  Future<void> init() async {
    emit(state.copyWith(
      locale: _getLocale(),
      fontFamily: FontFamily.poppins,
    ));
  }

  Future<void> changeLanguage(Locale locale) async {
    helpLocale = locale;
    emit(state.copyWith(locale: locale));
    await _localeService.saveLocale(locale);
  }

  Locale _getLocale() {
    final locale = _localeService.getLocale();
    helpLocale = locale;
    return locale;
  }

  @override
  void handleError(String message) {
    emit(state.copyWith(
      status: StateStatus.error,
      message: message,
    ));
  }
}

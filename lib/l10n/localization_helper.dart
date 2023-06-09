import 'dart:ui';

import 'package:flutter/widgets.dart';

import 'generated/app_localizations.dart';
import 'generated/app_localizations_en.dart';

export 'generated/app_localizations.dart';

Locale helpLocale = window.locale;
const defaultLocale = Locale('en');
final defaultLocalize = AppLocalizationsEn(defaultLocale.languageCode);

AppLocalizations _getLocalizations(BuildContext context) {
  final localizations = AppLocalizations.of(context);
  if (localizations != null) return localizations;
  return defaultLocalize;
}

AppLocalizations getLocaleLocalizations([Locale? locale]) {
  Locale? local;
  if (locale == null) {
    local = helpLocale;
  } else {
    local = locale;
  }

  final localeSupported = AppLocalizations.supportedLocales.contains(local);

  if (!localeSupported) return defaultLocalize;

  return lookupAppLocalizations(local);
}

String getLocaleName(Locale locale) {
  return getLocaleLocalizations(locale).languageName;
}

String getLocaleFlag(Locale locale) {
  return getLocaleLocalizations(locale).flag;
}

extension ContextExt on BuildContext {
  AppLocalizations get strings => _getLocalizations(this);
}

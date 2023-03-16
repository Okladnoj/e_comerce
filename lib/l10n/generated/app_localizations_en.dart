import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get flag => '🇬🇧';

  @override
  String get languages => 'Languages';

  @override
  String get languageName => 'English';

  @override
  String get fonts => 'Fonts';

  @override
  String get serverErrorMessage => 'Server error occurred';

  @override
  String get errorInternetConnection => 'Internet Connection Error';

  @override
  String get theme => 'Theme';

  @override
  String get light => 'Light';

  @override
  String get dark => 'Dark';

  @override
  String get logIn => 'Log In';

  @override
  String get oops => 'Ooops...';
}

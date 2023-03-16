import 'app_localizations.dart';

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get flag => '🇺🇦';

  @override
  String get languages => 'Мова';

  @override
  String get languageName => 'Українська';

  @override
  String get fonts => 'Шрифти';

  @override
  String get serverErrorMessage => 'Помилка сервера';

  @override
  String get errorInternetConnection => 'Помилка з\'єднання';

  @override
  String get theme => 'Тема';

  @override
  String get light => 'Світла';

  @override
  String get dark => 'Темна';

  @override
  String get logIn => 'Увійти';

  @override
  String get oops => 'Халепа...';
}

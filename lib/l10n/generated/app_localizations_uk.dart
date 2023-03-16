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
  String get logOut => 'Вийти';

  @override
  String get specialOffers => 'Спеціальні пропозиції';

  @override
  String get bestPrices => 'Найкращі ціни';

  @override
  String get noProducts => 'На даний момент немає доступних продуктів';

  @override
  String get userName => 'Ім\'я користувача';

  @override
  String get forgotPassword => 'Забув пароль';

  @override
  String get passwordHint => 'Пароль';

  @override
  String get eComerce => 'eComerce';

  @override
  String get oops => 'Халепа...';
}

part of '../app_theme.dart';

abstract class FontVariantConfigs {
  static const w100 = [FontVariation('wght', 100)];
  static const w200 = [FontVariation('wght', 200)];
  static const w300 = [FontVariation('wght', 300)];
  static const w400 = [FontVariation('wght', 400)];
  static const w500 = [FontVariation('wght', 500)];
  static const w600 = [FontVariation('wght', 600)];
  static const w700 = [FontVariation('wght', 700), FontVariation('wdth', 104)];
  static const w800 = [FontVariation('wght', 800)];
  static const w900 = [FontVariation('wght', 900)];
}

ThemeData _lightThemeData({String? fontFamily}) {
  final customDesign = CustomDesigns.light();
  return ThemeData(
    useMaterial3: true,
    primaryColor: LightStyleConstants.primary,
    unselectedWidgetColor: LightStyleConstants.primaryVariant,
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: _colorSchemeLight.onPrimary,
        size: 18,
      ),
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontVariations: FontVariantConfigs.w500,
        fontFamily: fontFamily,
        fontSize: 20,
        color: LightStyleConstants.primaryVariant,
      ),
      backgroundColor: LightStyleConstants.primary,
    ),
    buttonTheme: ButtonThemeData(
      colorScheme: _colorSchemeLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 4,
        foregroundColor: _colorSchemeLight.primary,
        backgroundColor: _colorSchemeLight.surface,
        side: BorderSide(
          color: _colorSchemeLight.surface,
          width: 0,
        ),
        shadowColor: _colorSchemeLight.background,
        padding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: _colorSchemeLight.surface,
            width: 0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal,
        fontVariations: FontVariantConfigs.w300,
        fontFamily: fontFamily,
        fontSize: 96,
        letterSpacing: -1.5,
        color: LightStyleConstants.primary,
      ),
      displayMedium: TextStyle(
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal,
        fontVariations: FontVariantConfigs.w300,
        fontFamily: fontFamily,
        fontSize: 60,
        letterSpacing: -0.5,
        color: LightStyleConstants.primary,
      ),
      displaySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontVariations: FontVariantConfigs.w400,
        fontFamily: fontFamily,
        fontSize: 48,
        letterSpacing: 0,
        color: LightStyleConstants.primary,
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontVariations: FontVariantConfigs.w400,
        fontFamily: fontFamily,
        fontSize: 34,
        letterSpacing: 0.25,
        color: LightStyleConstants.white,
      ),
      headlineSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontVariations: FontVariantConfigs.w400,
        fontFamily: fontFamily,
        fontSize: 24,
        letterSpacing: 0,
        color: LightStyleConstants.white,
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontFamily: fontFamily,
        fontSize: 16,
        letterSpacing: 0.15,
        color: _colorSchemeLight.onPrimary,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        fontVariations: FontVariantConfigs.w700,
        fontFamily: fontFamily,
        fontSize: 18,
        letterSpacing: 0.15,
        color: _colorSchemeLight.onPrimary,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontVariations: FontVariantConfigs.w400,
        fontFamily: fontFamily,
        fontSize: 14,
        letterSpacing: 0.1,
        color: LightStyleConstants.surface,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontVariations: FontVariantConfigs.w400,
        fontFamily: fontFamily,
        fontSize: 16,
        letterSpacing: 0.5,
        color: _colorSchemeLight.onPrimary,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontVariations: FontVariantConfigs.w400,
        fontFamily: fontFamily,
        fontSize: 14,
        letterSpacing: 0.25,
        color: _colorSchemeLight.onPrimary,
      ),
      labelLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        fontVariations: FontVariantConfigs.w700,
        fontFamily: fontFamily,
        fontSize: 16,
        letterSpacing: 1.25,
        color: LightStyleConstants.primary,
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        fontVariations: FontVariantConfigs.w500,
        fontFamily: fontFamily,
        fontSize: 12,
        letterSpacing: 0.4,
        color: _colorSchemeLight.onPrimary,
      ),
      labelSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontVariations: FontVariantConfigs.w500,
        fontFamily: fontFamily,
        fontSize: 10,
        letterSpacing: 1.5,
        color: LightStyleConstants.primary,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _colorSchemeLight.onPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(200),
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelPadding: const EdgeInsets.symmetric(vertical: 8),
      labelStyle: TextStyle(
        color: _colorSchemeLight.onPrimary,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
      unselectedLabelStyle: TextStyle(
        color: _colorSchemeLight.onPrimary,
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
    ),
    scaffoldBackgroundColor: _colorSchemeLight.background,
    dividerColor: LightStyleConstants.primary,
    canvasColor: LightStyleConstants.white,
    extensions: [customDesign],
    colorScheme: _colorSchemeLight.copyWith(
      background: LightStyleConstants.background,
    ),
  );
}

const _colorSchemeLight = ColorScheme.light(
  brightness: Brightness.light,
  primary: LightStyleConstants.primary,
  primaryContainer: LightStyleConstants.primaryVariant,
  onPrimary: LightStyleConstants.black,
  secondary: LightStyleConstants.secondary,
  secondaryContainer: LightStyleConstants.secondaryContainer,
  background: LightStyleConstants.background,
  surface: LightStyleConstants.white,
  error: LightStyleConstants.error,
  onError: LightStyleConstants.onError,
  tertiary: LightStyleConstants.primary,
  onTertiary: LightStyleConstants.primary,
  tertiaryContainer: LightStyleConstants.primary,
  onTertiaryContainer: LightStyleConstants.primary,
  outline: LightStyleConstants.primary,
);

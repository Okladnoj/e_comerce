import 'package:flutter/material.dart';

@immutable
class CustomDesigns extends ThemeExtension<CustomDesigns> {
  final List<BoxShadow> shadowCard;

  const CustomDesigns._({
    required this.shadowCard,
  });

  factory CustomDesigns.dark() {
    // TODO: change if we will add Dark Theme
    return CustomDesigns.light();
  }
  factory CustomDesigns.light() {
    return const CustomDesigns._(
      shadowCard: [
        BoxShadow(
          color: Color(0x0C000000),
          blurRadius: 145,
          offset: Offset(0, 100),
        ),
        BoxShadow(
          color: Color(0x08000000),
          blurRadius: 43.71,
          offset: Offset(0, 30.15),
        ),
        BoxShadow(
          color: Color(0x06000000),
          blurRadius: 18.16,
          offset: Offset(0, 12.52),
        ),
        BoxShadow(
          color: Color(0x04000000),
          blurRadius: 6.57,
          offset: Offset(0, 4.53),
        ),
      ],
    );
  }

  @override
  ThemeExtension<CustomDesigns> lerp(
    ThemeExtension<CustomDesigns>? other,
    double t,
  ) {
    final shadow = <BoxShadow?>[];
    if (other is! CustomDesigns) {
      return this;
    }
    for (int i = 0; i < shadowCard.length; i++) {
      final a = shadowCard[i];
      final b = other.shadowCard[i];
      shadow.add(BoxShadow.lerp(a, b, t));
    }
    return copyWith(
      shadowCard: shadow.whereType<BoxShadow>().toList(),
    );
  }

  @override
  ThemeExtension<CustomDesigns> copyWith({
    List<BoxShadow>? shadowCard,
  }) {
    return CustomDesigns._(
      shadowCard: shadowCard ?? this.shadowCard,
    );
  }
}

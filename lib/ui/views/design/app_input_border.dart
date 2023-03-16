import 'dart:math';

import 'package:flutter/material.dart';

class AppInputBorder extends InputBorder {
  final double borderRadius;
  final double hight;

  const AppInputBorder({
    BorderSide borderSide = const BorderSide(),
    this.borderRadius = 2,
    this.hight = 4,
  }) : super(borderSide: borderSide);

  @override
  AppInputBorder copyWith({BorderSide? borderSide}) {
    return AppInputBorder(
      borderSide: borderSide ?? this.borderSide,
      borderRadius: borderRadius,
    );
  }

  @override
  EdgeInsetsGeometry get dimensions {
    return EdgeInsets.only(bottom: borderSide.width);
  }

  @override
  AppInputBorder scale(double t) {
    return AppInputBorder(
      borderSide: borderSide.scale(t),
      borderRadius: borderRadius * t,
    );
  }

  @override
  void paint(
    Canvas canvas,
    Rect rect, {
    double? gapStart,
    double? gapExtent,
    double? gapPercentage,
    TextDirection? textDirection,
  }) {
    final paint = borderSide.toPaint();
    final width = borderSide.width;

    final xMin = rect.left;
    final xMax = rect.right;
    final yMax = rect.bottom - width;

    final radius = borderRadius;
    final comb = borderRadius + hight;

    final Path path = Path()
      ..moveTo(xMin, yMax - comb)
      ..arcTo(
        Rect.fromCircle(
            center: Offset(xMin + radius, yMax - radius), radius: radius),
        pi,
        -pi / 2,
        false,
      )
      ..arcTo(
        Rect.fromCircle(
            center: Offset(xMax - radius, yMax - radius), radius: radius),
        -3 * pi / 2,
        -pi / 2,
        false,
      )
      ..lineTo(xMax, yMax - comb);

    canvas.drawPath(path, paint);
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    final Path path = Path()
      ..addRect(rect.deflate(borderSide.width + borderRadius))
      ..close();
    return path;
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final Path path = Path()
      ..addRect(rect)
      ..close();
    return path;
  }

  @override
  bool get isOutline => true;
}

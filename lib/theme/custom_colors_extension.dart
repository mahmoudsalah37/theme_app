import 'package:flutter/material.dart';

import 'colors_model.dart';

@immutable
class CustomColorsExtension extends ThemeExtension<CustomColorsExtension> {
  final ColorsModel colorsModel;

  const CustomColorsExtension({
    required this.colorsModel,
  });

  @override
  ThemeExtension<CustomColorsExtension> copyWith({ColorsModel? colorsModel}) {
    return CustomColorsExtension(
      colorsModel: colorsModel ?? this.colorsModel,
    );
  }

  @override
  ThemeExtension<CustomColorsExtension> lerp(
      covariant ThemeExtension<CustomColorsExtension>? other, double t) {
    if (other is! CustomColorsExtension) {
      return this;
    }
    return CustomColorsExtension(
      colorsModel: colorsModel,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:theme_app/theme/colors_model.dart';

import 'custom_colors_extension.dart';

extension ThemeExtension on BuildContext {
  ColorsModel get colorsExtension {
    final customColorsExtension =
        Theme.of(this).extension<CustomColorsExtension>()!;
    return customColorsExtension.colorsModel;
  }
}

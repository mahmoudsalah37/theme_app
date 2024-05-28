import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theme_app/theme/tw_theme.dart';

import '../gen/assets.gen.dart';
import 'colors_model.dart';
import 'custom_colors_extension.dart';

class ThemeManager {
  static const instance = ThemeManager._();
  const ThemeManager._();
  Future<void> initTheme() async {
    final lightJson = await _getFileJson(Assets.themes.lightTeme);
    final darkJson = await _getFileJson(Assets.themes.darkTheme);
    TWTheme.lightTheme = _setColorsModelInExtensionsTheme(
        theme: TWTheme.lightTheme, json: lightJson);
    TWTheme.darkTheme = _setColorsModelInExtensionsTheme(
        theme: TWTheme.darkTheme, json: darkJson);
  }

  ThemeData _setColorsModelInExtensionsTheme(
      {required ThemeData theme, required Map<String, dynamic> json}) {
    return theme.copyWith(extensions: [
      CustomColorsExtension(colorsModel: ColorsModel.fromJson(json))
    ]);
  }

  Future<Map<String, dynamic>> _getFileJson(String path) async {
    return json.decode(await rootBundle.loadString(path));
  }
}

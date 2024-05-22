import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theme_app/theme/colors_model.dart';
import 'package:theme_app/theme/custom_colors_extension.dart';

import '../tw_font_manager.dart';
import 'tw_colors.dart';
import 'tw_dark_colors.dart';
import 'tw_light_colors.dart';

class TWTheme {
  static final _lighttColors = CustomColorsExtension(
    colorsModel: ColorsModel(
      primary: Primary(
        primaryColor: White(value: '#6B47F5'),
      ),
    ),
  );

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: FontType.tawuniya.fontTypeName,
    dialogBackgroundColor: Colors.white,
    scaffoldBackgroundColor: TWLightColors.twScaffoldBgColor,
    primaryColor: TWLightColors.twPrimaryColorOne,
    indicatorColor: Colors.white,
    cardColor: Colors.white,
    unselectedWidgetColor: TWLightColors.twColorD9DCE1,
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      fillColor: MaterialStateColor.resolveWith(
          (states) => TWLightColors.twCOlorbac9AA2AF),
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
        (states) {
          return TWLightColors.twCOlorbac9AA2AF;
        },
      ),
    ),
    radioTheme: RadioThemeData(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
        (states) {
          return TWLightColors.twCOlorbac9AA2AF;
        },
      ),
      fillColor: MaterialStateColor.resolveWith(
          (states) => TWLightColors.twCOlorbac9AA2AF),
    ),
    primarySwatch: TWColors.getMaterialColor(
      TWLightColors.twPrimaryColorOne,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ),
    ),
    extensions: [
      _lighttColors,
    ],
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: FontType.tawuniya.fontTypeName,
    dialogBackgroundColor: Colors.white,
    scaffoldBackgroundColor: TWDarkColors.twScaffoldBgColor,
    primaryColor: TWDarkColors.twPrimaryColorOne,
    unselectedWidgetColor: TWDarkColors.twColorD9DCE1,
    indicatorColor: Colors.white,
    cardColor: const Color.fromRGBO(50, 47, 83, 1),
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      fillColor: MaterialStateColor.resolveWith(
          (states) => TWDarkColors.twCOlorbac9AA2AF),
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
        (states) {
          return TWDarkColors.twCOlorbac9AA2AF;
        },
      ),
    ),
    radioTheme: RadioThemeData(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
        (states) {
          return TWDarkColors.twCOlorbac9AA2AF;
        },
      ),
      fillColor: MaterialStateColor.resolveWith(
          (states) => TWDarkColors.twCOlorbac9AA2AF),
    ),
    primarySwatch: TWColors.getMaterialColor(
      TWDarkColors.twPrimaryColorOne,
    ),
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
    ),
    extensions: [
      _lighttColors.copyWith(
        colorsModel: _lighttColors.colorsModel.copyWith(
          primary: _lighttColors.colorsModel.primary?.copyWith(
            primaryColor: _lighttColors.colorsModel.primary?.primaryColor
                ?.copyWith(value: '#000000'),
          ),
        ),
      ),
    ],
  );
  static final ThemeData nationalDayTheme = darkTheme.copyWith(
    extensions: [
      _lighttColors.copyWith(
        colorsModel: _lighttColors.colorsModel.copyWith(
          primary: _lighttColors.colorsModel.primary?.copyWith(
            primaryColor: _lighttColors.colorsModel.primary?.primaryColor
                ?.copyWith(value: '#007500'),
          ),
        ),
      ),
    ],
  );

  const TWTheme._();
}

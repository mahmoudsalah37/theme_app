import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../tw_font_manager.dart';
import 'tw_colors.dart';
import 'tw_dark_colors.dart';
import 'tw_light_colors.dart';

class TWTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: FontType.tawuniya.fontTypeName,
    dialogBackgroundColor: Colors.white,
    scaffoldBackgroundColor: TWLightColors.twScaffoldBgColor,
    primaryColor: TWLightColors.twPrimaryColorOne,
    indicatorColor: Colors.white,
    cardColor: Colors.white,
    // primaryColorLight: TWLightColors.primaryLight,
    unselectedWidgetColor: TWLightColors.twColorD9DCE1,
    checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        fillColor: MaterialStateColor.resolveWith(
            (states) => TWLightColors.twCOlorbac9AA2AF),
        overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
          return TWLightColors
              .twCOlorbac9AA2AF; // No overlay color for other states
        })),
    radioTheme: RadioThemeData(
      overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
        return TWLightColors
            .twCOlorbac9AA2AF; // Overlay color for the hovered state
        // No overlay color for other states
      }),
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
    // primaryColorDark: TWDarkColors.primaryDark,
    checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        fillColor: MaterialStateColor.resolveWith(
            (states) => TWDarkColors.twCOlorbac9AA2AF),
        overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
          return TWDarkColors
              .twCOlorbac9AA2AF; // No overlay color for other states
        })),
    radioTheme: RadioThemeData(
      overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
        return TWDarkColors
            .twCOlorbac9AA2AF; // Overlay color for the hovered state
        // No overlay color for other states
      }),
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
  );
  const TWTheme._();
}

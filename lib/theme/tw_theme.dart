import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../tw_font_manager.dart';
import 'tw_colors.dart';
import 'tw_dark_colors.dart';
import 'tw_light_colors.dart';

class TWTheme {
  // static final _commonColors = CustomColorsExtension(
  //   colorsModel: ColorsModel(
  //     primary: PrimaryModel(
  //       primaryColor: ColorValueModel(value: TWLightColors.twPrimaryColorOne),
  //       med: const ColorValueModel(value: TWLightColors.twColor007AFF),
  //       light: const ColorValueModel(value: TWLightColors.twColor00FFFFFF),
  //       dark: const ColorValueModel(value: TWLightColors.twColor091E42),
  //       logoGrey: const ColorValueModel(value: TWLightColors.twColor091E4226),
  //       logoLightGrey:
  //           const ColorValueModel(value: TWLightColors.twColor118CE4),
  //     ),
  //     neutral: NeutralModel(
  //       light: const ColorValueModel(value: TWLightColors.twColor141414),
  //       lightgray: const ColorValueModel(value: TWLightColors.twColor1A1C1F),
  //       silver: const ColorValueModel(value: TWLightColors.twColor1D252D),
  //       darkgray: const ColorValueModel(value: TWLightColors.twColor2098EE),
  //       dimgray: const ColorValueModel(value: TWLightColors.twColor22203D),
  //       darkslategray:
  //           const ColorValueModel(value: TWLightColors.twColor22A45D),
  //       newLight: ColorValueModel(value: TWLightColors.twColor312E52),
  //     ),
  //     text: const TextModel(
  //       black: ColorValueModel(value: TWLightColors.twColor34383E),
  //       darkGray: ColorValueModel(value: TWLightColors.twColor423A67),
  //     ),
  //     white: const ColorValueModel(value: TWLightColors.twColor455560),
  //     secondary: Color2Model(
  //       error: const ColorValueModel(value: TWLightColors.twColor4B4776),
  //       light: const ColorValueModel(value: TWLightColors.twColor4c4776),
  //       med: const ColorValueModel(value: TWLightColors.twColor5db364),
  //       dark: const ColorValueModel(value: TWLightColors.twColor676F7C),
  //       info: const ColorValueModel(value: TWLightColors.twColor67BF76),
  //       secondaryColor: ColorValueModel(value: TWLightColors.twColor6B47F5),
  //       success: const ColorValueModel(value: TWLightColors.twColor6E9fbb),
  //       warning: const ColorValueModel(value: TWLightColors.twColor761d2d),
  //     ),
  //     bl: const BlModel(
  //       general: ColorValueModel(value: TWLightColors.twColor761D2D),
  //       generalLight: ColorValueModel(value: TWLightColors.twColor818B9B),
  //       healthLife: ColorValueModel(value: TWLightColors.twColor8780F2),
  //       healthLifeLight: ColorValueModel(value: TWLightColors.twColor8a20f4),
  //       mobility: ColorValueModel(value: TWLightColors.twColor8f73f2),
  //       mobilityLight: ColorValueModel(value: TWLightColors.twColor9747ff),
  //     ),
  //     success: const Color2Model(
  //       error: ColorValueModel(value: TWLightColors.twColor9AA2AF),
  //       light: ColorValueModel(value: TWLightColors.twColorA8A9CF),
  //       med: ColorValueModel(value: TWLightColors.twColorB347F5),
  //       dark: ColorValueModel(value: TWLightColors.twColorB3B9C3),
  //       info: ColorValueModel(value: TWLightColors.twCOlorbac9AA2AF),
  //       secondaryColor: ColorValueModel(value: TWLightColors.twColorbB3B9C3),
  //       success: ColorValueModel(value: TWLightColors.twColorBlack),
  //       warning: ColorValueModel(value: TWLightColors.twColorC0C2E8),
  //     ),
  //     info: Color2Model(
  //       error: ColorValueModel(value: TWLightColors.twColorD6D1ED),
  //       light: const ColorValueModel(value: TWLightColors.twColorD9A51F),
  //       med: const ColorValueModel(value: TWLightColors.twColorD9DCE1),
  //       dark: const ColorValueModel(value: TWLightColors.twColordadada),
  //       info: const ColorValueModel(value: TWLightColors.twColorDB1753),
  //       secondaryColor:
  //           const ColorValueModel(value: TWLightColors.twColorE0DEE7),
  //       success: const ColorValueModel(value: TWLightColors.twColorE4F1F8),
  //       warning: const ColorValueModel(value: TWLightColors.twColorede8fe),
  //     ),
  //     warning: const Color2Model(
  //       error: ColorValueModel(value: TWLightColors.twColorEE750033),
  //       light: ColorValueModel(value: TWLightColors.twColorF0F0F0),
  //       med: ColorValueModel(value: TWLightColors.twColorf0fff5),
  //       dark: ColorValueModel(value: TWLightColors.twColorF2F3F5),
  //       info: ColorValueModel(value: TWLightColors.twColorF47B20),
  //       secondaryColor: ColorValueModel(value: TWLightColors.twColorF5F2FF),
  //       success: ColorValueModel(value: TWLightColors.twColorF8F6FF),
  //       warning: ColorValueModel(value: TWLightColors.twColorfdf1e5),
  //     ),
  //     error: Color2Model(
  //       error: const ColorValueModel(value: TWLightColors.twColorff4136),
  //       light: const ColorValueModel(value: TWLightColors.twColorFF6D01),
  //       med: const ColorValueModel(value: TWLightColors.twColorFFF1CC),
  //       dark: const ColorValueModel(value: TWLightColors.twColorFFF1E4),
  //       info: const ColorValueModel(value: TWLightColors.twColorFFF2F1),
  //       secondaryColor:
  //           const ColorValueModel(value: TWLightColors.twColorSuccessGreenText),
  //       success: const ColorValueModel(value: TWLightColors.twDisableColor),
  //       warning: ColorValueModel(value: TWLightColors.twPrimaryColorOne),
  //     ),
  //     loyalty: LoyaltyModel(
  //       vitality: ColorValueModel(value: TWLightColors.twPrimaryColorTwo),
  //       vitalityLight:
  //           const ColorValueModel(value: TWLightColors.twSecondaryColor),
  //       drive: const ColorValueModel(value: TWLightColors.twWhite),
  //       driveLight: const ColorValueModel(value: TWLightColors.twColorE71757),
  //     ),
  //     button: const ButtonModel(
  //       whiteButton: ColorValueModel(value: TWLightColors.twScaffoldBgColor),
  //       secondaryButton: ColorValueModel(value: TWLightColors.twColorFFF1E7),
  //     ),
  //     graphics: <String, ColorValueModel>{},
  //     eCard: const ECardModel(
  //       bg: ColorValueModel(value: TWLightColors.twColorFF7312),
  //     ),
  //     icons: const IconsModel(
  //       dark: ColorValueModel(value: Color(0xffEACAB3)),
  //       light: ColorValueModel(value: TWLightColors.twColorFFEAF2),
  //     ),
  //   ),
  // );

  static ThemeData lightTheme = ThemeData(
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
  );

  static ThemeData darkTheme = ThemeData(
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
  );

  const TWTheme._();
}

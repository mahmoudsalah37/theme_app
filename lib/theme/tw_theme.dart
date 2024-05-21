import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theme_app/theme/custom_colors_extension.dart';

import '../tw_constents.dart';
import '../tw_font_manager.dart';
import 'tw_colors.dart';
import 'tw_dark_colors.dart';
import 'tw_light_colors.dart';

class TWTheme {
  static final _defaultColors = CustomColorsExtension(
    primaryColor: TWLightColors.twPrimaryColorOne,
    twColor007AFF: TWLightColors.twColor007AFF,
    twColor00FFFFFF: TWLightColors.twColor00FFFFFF,
    twColor091E42: TWLightColors.twColor091E42,
    twColor091E4226: TWLightColors.twColor091E4226,
    twColor118CE4: TWLightColors.twColor118CE4,
    twColor141414: TWLightColors.twColor141414,
    twColor1A1C1F: TWLightColors.twColor1A1C1F,
    twColor1D252D: TWLightColors.twColor1D252D,
    twColor2098EE: TWLightColors.twColor2098EE,
    twColor22203D: TWLightColors.twColor22203D,
    twColor22A45D: TWLightColors.twColor22A45D,
    twColor312E52: TWLightColors.twColor312E52,
    twColor34383E: TWLightColors.twColor34383E,
    twColor423A67: TWLightColors.twColor423A67,
    twColor455560: TWLightColors.twColor455560,
    twColor4B4776: TWLightColors.twColor4B4776,
    twColor4c4776: TWLightColors.twColor4c4776,
    twColor5db364: TWLightColors.twColor5db364,
    twColor676F7C: TWLightColors.twColor676F7C,
    twColor67BF76: TWLightColors.twColor67BF76,
    twColor6B47F5: TWLightColors.twColor6B47F5,
    twColor6E9fbb: TWLightColors.twColor6E9fbb,
    twColor761d2d: TWLightColors.twColor761d2d,
    twColor761D2D: TWLightColors.twColor761D2D,
    twColor818B9B: TWLightColors.twColor818B9B,
    twColor8780F2: TWLightColors.twColor8780F2,
    twColor8a20f4: TWLightColors.twColor8a20f4,
    twColor8f73f2: TWLightColors.twColor8f73f2,
    twColor9747ff: TWLightColors.twColor9747ff,
    twColor9AA2AF: TWLightColors.twColor9AA2AF,
    twColorA8A9CF: TWLightColors.twColorA8A9CF,
    twColorB347F5: TWLightColors.twColorB347F5,
    twColorB3B9C3: TWLightColors.twColorB3B9C3,
    twCOlorbac9AA2AF: TWLightColors.twCOlorbac9AA2AF,
    twColorbB3B9C3: TWLightColors.twColorbB3B9C3,
    twColorBlack: TWLightColors.twColorBlack,
    twColorC0C2E8: TWLightColors.twColorC0C2E8,
    twColorD6D1ED: TWLightColors.twColorD6D1ED,
    twColorD9A51F: TWLightColors.twColorD9A51F,
    twColorD9DCE1: TWLightColors.twColorD9DCE1,
    twColordadada: TWLightColors.twColordadada,
    twColorDB1753: TWLightColors.twColorDB1753,
    twColorE0DEE7: TWLightColors.twColorE0DEE7,
    twColorE4F1F8: TWLightColors.twColorE4F1F8,
    twColorede8fe: TWLightColors.twColorede8fe,
    twColorEE750033: TWLightColors.twColorEE750033,
    twColorF0F0F0: TWLightColors.twColorF0F0F0,
    twColorf0fff5: TWLightColors.twColorf0fff5,
    twColorF2F3F5: TWLightColors.twColorF2F3F5,
    twColorF47B20: TWLightColors.twColorF47B20,
    twColorF5F2FF: TWLightColors.twColorF5F2FF,
    twColorF8F6FF: TWLightColors.twColorF8F6FF,
    twColorfdf1e5: TWLightColors.twColorfdf1e5,
    twDangerColor: TWLightColors.twColorff4136,
    twColorFF6D01: TWLightColors.twColorFF6D01,
    twColorFFF1CC: TWLightColors.twColorFFF1CC,
    twColorFFF1E4: TWLightColors.twColorFFF1E4,
    twColorFFF2F1: TWLightColors.twColorFFF2F1,
    twColorSuccessGreenText: TWLightColors.twColorSuccessGreenText,
    twDisableColor: TWLightColors.twDisableColor,
    twPrimaryColorOne: TWLightColors.twPrimaryColorOne,
    twPrimaryColorTwo: TWLightColors.twPrimaryColorTwo,
    twSecondaryColor: TWLightColors.twSecondaryColor,
    twWhite: TWLightColors.twWhite,
    twColorE71757: TWLightColors.twColorE71757,
    twScaffoldBgColor: TWLightColors.twScaffoldBgColor,
    twColorFFF1E7: TWLightColors.twColorFFF1E7,
    twColorFF7312: TWLightColors.twColorFF7312,
    twColorEACAB3: const Color(0xffEACAB3),
    twColorFFEAF2: TWLightColors.twColorFFEAF2,
    twColorFF2E7D: TWLightColors.twColorFF2E7D,
    twColorEBFCF5: TWLightColors.twColorEBFCF5,
    twColor33E39D: TWLightColors.twColor33E39D,
    twWhiteDarkColor: Colors.white,
    twDarkWhiteColor: const Color.fromRGBO(34, 32, 61, 1),
    twBlackWhiteColor: Colors.black,
    twWhiteBlackColor: Colors.white,
    twPrimaryWhite: TWLightColors.twPrimaryColorOne,
    twSecondaryWhite: TWLightColors.twSecondaryColor,
    twPrimaryTwoWhite: const Color(0xff312E52),
    twWhitePrimaryTwo: Colors.white,
    twPrimaryTwoSecondary: const Color(0xff312E52),
    twPrimaryTwoGrey: const Color(0xff312E52),
    twGreyDisable: const Color(0xFFF2F3F5),
    twDisableWhite: TWLightColors.twDisableColor,
    twGreyWhite: const Color(0xFFF2F3F5),
    twPinTextColor: const Color.fromRGBO(30, 60, 87, 1),
    twDarkgreyWhite: TWLightColors.twColor676F7C,
    twLightRed: const Color(0xffFFF2F1),
    twDark: const Color.fromRGBO(34, 32, 61, 1),
    twLightPrimary: const Color(0xFFF8F6FF),
    twColorTrackColor: TWLightColors.twColorTrackColor,
    twColorF09D98: TWLightColors.twColorF09D98,
    twColorF8F9FB: TWLightColors.twColorF8F9FB,
    twGrey: const Color(0xFFF2F3F5),
    linearGradientEliteTag: const <Color>[Color(0xffFFF1CC), Color(0xffD9A51F)],
    twLightPrimaryWhite: const Color(0xFFF8F6FF),
    twBlack: const Color(0xff1A1C1F),
    twWhiteColor: Colors.white,
    twColor5DB364: const Color(0xff5DB364),
    twColorF0FFF5: const Color(0xffff0fff5),
    twColorFF4136: const Color(0xffFF4136),
    twColorbac9AA2AF: const Color(0xffbac9aa2af),
    twColorff4136: const Color(0xffff4136),
    twColorfff2f1: const Color(0xFFfff2f1),
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
      _defaultColors,
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
      _defaultColors.copyWith(
        twColor1A1C1F: const Color(0xffFFFFFF),
        twColor34383E: const Color(0xffFFFFFF),
        twColor676F7C: const Color(0xff423A67),
        twColor67BF76: const Color(0xff237B4B),
        twColor6B47F5: const Color(0xff213039),
        twColor8780F2: const Color(0xff8BB2C9),
        twColor8f73f2: const Color(0xff6E9FBB),
        twColorB347F5: const Color(0xFF50B1B2),
        twColorbB3B9C3: const Color(0xff423A67),
        twColorBlack: const Color(0xffffffff),
        twColorD6D1ED: const Color(0xffD6D1ED),
        twColorD9DCE1: const Color(0xff423A67),
        twColorE0DEE7: const Color(0xffA8C5D6),
        twColorE4F1F8: const Color(0xffA8C5D6),
        twColorF0F0F0: const Color(0xffB3B9C3),
        twColorf0fff5: const Color(0xffA8C5D6),
        twColorF2F3F5: const Color(0xff22203D),
        twColorF5F2FF: const Color(0xffA8C5D6),
        twColorFFF1E4: const Color(0xffA8C5D6),
        twColorFFF2F1: const Color(0xffA8C5D6),
        twColorfff2f1: const Color(0xffA8C5D6),
        twPrimaryColorOne: const Color(0xff213039),
        twWhite: const Color(0xff322F53),
        twScaffoldBgColor: const Color.fromRGBO(50, 47, 83, 1),
        twWhiteDarkColor: const Color.fromRGBO(34, 32, 61, 1),
        twDarkWhiteColor: Colors.white,
        twBlackWhiteColor: Colors.white,
        twWhiteBlackColor: Colors.white,
        twPrimaryWhite: Colors.white,
        twSecondaryWhite: Colors.white,
        twPrimaryTwoWhite: Colors.white,
        twWhitePrimaryTwo: const Color(0xff312E52),
        twPrimaryTwoSecondary: const Color(0xff8F73F2),
        twPrimaryTwoGrey: const Color.fromRGBO(248, 246, 255, 1),
        twGreyDisable: const Color(0xFF676F7C),
        twDisableWhite: Colors.white,
        twPinTextColor: Colors.white,
      ),
    ],
  );
  static final ThemeData nationalDayTheme = darkTheme
      .copyWith(scaffoldBackgroundColor: const Color(0xFF00726C), extensions: [
    _defaultColors.copyWith(
        twColor312E52: TWConstents.remoteColors.containsKey("secondaryColor")
            ? HexColor.fromHex(TWConstents.remoteColors["secondaryColor"])
            : const Color(0xFF00726C),
        twColor6B47F5: TWConstents.remoteColors.containsKey("primaryColorOne")
            ? HexColor.fromHex(TWConstents.remoteColors["primaryColorOne"])
            : const Color(0xFF6B47F5),
        twColorB347F5: TWConstents.remoteColors.containsKey("primaryColorOne")
            ? const Color(0xFF50B1B2)
            : const Color(0xffB347F5),
        twColorD6D1ED: TWConstents.remoteColors.containsKey("twColorD6D1ED")
            ? HexColor.fromHex(TWConstents.remoteColors["twColorD6D1ED"])
            : const Color(0xFFB0D5D7),
        twPrimaryColorOne:
            TWConstents.remoteColors.containsKey("primaryColorOne")
                ? HexColor.fromHex(TWConstents.remoteColors["primaryColorOne"])
                : const Color(0xFF00726C),
        twPrimaryColorTwo:
            TWConstents.remoteColors.containsKey("primaryColorTwo")
                ? HexColor.fromHex(TWConstents.remoteColors["primaryColorTwo"])
                : const Color(0xFF0A4862),
        twSecondaryColor:
            TWConstents.remoteColors.containsKey("primaryColorTwo")
                ? const Color(0xFF2A6460)
                : const Color(0xFF0A4862)),
  ]);

  const TWTheme._();
}

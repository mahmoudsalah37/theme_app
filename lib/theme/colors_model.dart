import 'dart:convert';

import 'package:flutter/material.dart';

import '../tw_constents.dart';

ColorsModel colorsModelsFromJson(String str) =>
    ColorsModel.fromJson(json.decode(str));

String colorsModelsToJson(ColorsModel data) => json.encode(data.toJson());

class ColorsModel {
  final PrimaryModel primary;
  final NeutralModel neutral;
  final TextModel text;
  final ColorValueModel white;
  final Color2Model secondary;
  final BlModel bl;
  final Color2Model success;
  final Color2Model info;
  final Color2Model warning;
  final Color2Model error;
  final LoyaltyModel loyalty;
  final ButtonModel button;
  final Map<String, ColorValueModel> graphics;
  final ECardModel eCard;
  final IconsModel icons;

  const ColorsModel({
    this.primary = const PrimaryModel(),
    this.neutral = const NeutralModel(),
    this.text = const TextModel(),
    this.white = const ColorValueModel(),
    this.secondary = const Color2Model(),
    this.bl = const BlModel(),
    this.success = const Color2Model(),
    this.info = const Color2Model(),
    this.warning = const Color2Model(),
    this.error = const Color2Model(),
    this.loyalty = const LoyaltyModel(),
    this.button = const ButtonModel(),
    this.graphics = const <String, ColorValueModel>{},
    this.eCard = const ECardModel(),
    this.icons = const IconsModel(),
  });

  ColorsModel copyWith({
    PrimaryModel? primary,
    NeutralModel? neutral,
    TextModel? text,
    ColorValueModel? white,
    Color2Model? secondary,
    BlModel? bl,
    Color2Model? success,
    Color2Model? info,
    Color2Model? warning,
    Color2Model? error,
    LoyaltyModel? loyalty,
    ButtonModel? button,
    Map<String, ColorValueModel>? graphics,
    ECardModel? eCard,
    IconsModel? icons,
  }) =>
      ColorsModel(
        primary: primary ?? this.primary,
        neutral: neutral ?? this.neutral,
        text: text ?? this.text,
        white: white ?? this.white,
        secondary: secondary ?? this.secondary,
        bl: bl ?? this.bl,
        success: success ?? this.success,
        info: info ?? this.info,
        warning: warning ?? this.warning,
        error: error ?? this.error,
        loyalty: loyalty ?? this.loyalty,
        button: button ?? this.button,
        graphics: graphics ?? this.graphics,
        eCard: eCard ?? this.eCard,
        icons: icons ?? this.icons,
      );

  factory ColorsModel.fromJson(Map<String, dynamic> json) => ColorsModel(
        primary: PrimaryModel.fromJson(json["Primary"]),
        neutral: NeutralModel.fromJson(json["Neutral"]),
        text: TextModel.fromJson(json["Text"]),
        white: ColorValueModel.fromJson(json["White"]),
        secondary: Color2Model.fromJson(json["Secondary"]),
        bl: BlModel.fromJson(json["BL"]),
        success: Color2Model.fromJson(json["Success"]),
        info: Color2Model.fromJson(json["Info"]),
        warning: Color2Model.fromJson(json["Warning"]),
        error: Color2Model.fromJson(json["Error"]),
        loyalty: LoyaltyModel.fromJson(json["Loyalty"]),
        button: ButtonModel.fromJson(json["Button"]),
        graphics: Map.from(json["Graphics"]!).map((k, v) =>
            MapEntry<String, ColorValueModel>(k, ColorValueModel.fromJson(v))),
        eCard: ECardModel.fromJson(json["eCard"]),
        icons: IconsModel.fromJson(json["Icons"]),
      );

  Map<String, dynamic> toJson() => {
        "Primary": primary.toJson(),
        "Neutral": neutral.toJson(),
        "Text": text.toJson(),
        "White": white.toJson(),
        "Secondary": secondary.toJson(),
        "BL": bl.toJson(),
        "Success": success.toJson(),
        "Info": info.toJson(),
        "Warning": warning.toJson(),
        "Error": error.toJson(),
        "Loyalty": loyalty.toJson(),
        "Button": button.toJson(),
        "Graphics": Map.from(graphics)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "eCard": eCard.toJson(),
        "Icons": icons.toJson(),
      };
}

class BlModel {
  final ColorValueModel general;
  final ColorValueModel generalLight;
  final ColorValueModel healthLife;
  final ColorValueModel healthLifeLight;
  final ColorValueModel mobility;
  final ColorValueModel mobilityLight;

  const BlModel({
    this.general = const ColorValueModel(),
    this.generalLight = const ColorValueModel(),
    this.healthLife = const ColorValueModel(),
    this.healthLifeLight = const ColorValueModel(),
    this.mobility = const ColorValueModel(),
    this.mobilityLight = const ColorValueModel(),
  });

  BlModel copyWith({
    ColorValueModel? general,
    ColorValueModel? generalLight,
    ColorValueModel? healthLife,
    ColorValueModel? healthLifeLight,
    ColorValueModel? mobility,
    ColorValueModel? mobilityLight,
  }) =>
      BlModel(
        general: general ?? this.general,
        generalLight: generalLight ?? this.generalLight,
        healthLife: healthLife ?? this.healthLife,
        healthLifeLight: healthLifeLight ?? this.healthLifeLight,
        mobility: mobility ?? this.mobility,
        mobilityLight: mobilityLight ?? this.mobilityLight,
      );

  factory BlModel.fromJson(Map<String, dynamic> json) => BlModel(
        general: ColorValueModel.fromJson(json["General"]),
        generalLight: ColorValueModel.fromJson(json["General-Light"]),
        healthLife: ColorValueModel.fromJson(json["Health&Life"]),
        healthLifeLight: ColorValueModel.fromJson(json["Health&Life-Light"]),
        mobility: ColorValueModel.fromJson(json["Mobility"]),
        mobilityLight: ColorValueModel.fromJson(json["Mobility-Light"]),
      );

  Map<String, dynamic> toJson() => {
        "General": general.toJson(),
        "General-Light": generalLight.toJson(),
        "Health&Life": healthLife.toJson(),
        "Health&Life-Light": healthLifeLight.toJson(),
        "Mobility": mobility.toJson(),
        "Mobility-Light": mobilityLight.toJson(),
      };
}

class ColorValueModel {
  final Color? value;

  const ColorValueModel({
    this.value,
  });

  ColorValueModel copyWith({
    Color? value,
  }) =>
      ColorValueModel(
        value: value ?? this.value,
      );

  factory ColorValueModel.fromJson(Map<String, dynamic> json) =>
      ColorValueModel(
        value: json["\u0024value"] == null
            ? null
            : HexColor.fromHex(json["\u0024value"]),
      );

  Map<String, dynamic> toJson() => {
        "\u0024value": value?.toHex(),
      };
}

class ButtonModel {
  final ColorValueModel whiteButton;
  final ColorValueModel secondaryButton;

  const ButtonModel({
    this.whiteButton = const ColorValueModel(),
    this.secondaryButton = const ColorValueModel(),
  });

  ButtonModel copyWith({
    ColorValueModel? whiteButton,
    ColorValueModel? secondaryButton,
  }) =>
      ButtonModel(
        whiteButton: whiteButton ?? this.whiteButton,
        secondaryButton: secondaryButton ?? this.secondaryButton,
      );

  factory ButtonModel.fromJson(Map<String, dynamic> json) => ButtonModel(
        whiteButton: ColorValueModel.fromJson(json["White-Button"]),
        secondaryButton: ColorValueModel.fromJson(json["Secondary-Button"]),
      );

  Map<String, dynamic> toJson() => {
        "White-Button": whiteButton.toJson(),
        "Secondary-Button": secondaryButton.toJson(),
      };
}

class ECardModel {
  final ColorValueModel bg;

  const ECardModel({
    this.bg = const ColorValueModel(),
  });

  ECardModel copyWith({
    ColorValueModel? bg,
  }) =>
      ECardModel(
        bg: bg ?? this.bg,
      );

  factory ECardModel.fromJson(Map<String, dynamic> json) => ECardModel(
        bg: ColorValueModel.fromJson(json["BG"]),
      );

  Map<String, dynamic> toJson() => {
        "BG": bg.toJson(),
      };
}

class Color2Model {
  final ColorValueModel error;
  final ColorValueModel light;
  final ColorValueModel med;
  final ColorValueModel dark;
  final ColorValueModel info;
  final ColorValueModel secondaryColor;
  final ColorValueModel success;
  final ColorValueModel warning;

  const Color2Model({
    this.error = const ColorValueModel(),
    this.light = const ColorValueModel(),
    this.med = const ColorValueModel(),
    this.dark = const ColorValueModel(),
    this.info = const ColorValueModel(),
    this.secondaryColor = const ColorValueModel(),
    this.success = const ColorValueModel(),
    this.warning = const ColorValueModel(),
  });

  Color2Model copyWith({
    ColorValueModel? error,
    ColorValueModel? light,
    ColorValueModel? med,
    ColorValueModel? dark,
    ColorValueModel? info,
    ColorValueModel? secondaryColor,
    ColorValueModel? success,
    ColorValueModel? warning,
  }) =>
      Color2Model(
        error: error ?? this.error,
        light: light ?? this.light,
        med: med ?? this.med,
        dark: dark ?? this.dark,
        info: info ?? this.info,
        secondaryColor: secondaryColor ?? this.secondaryColor,
        success: success ?? this.success,
        warning: warning ?? this.warning,
      );

  factory Color2Model.fromJson(Map<String, dynamic> json) => Color2Model(
        error: ColorValueModel.fromJson(json["Error"]),
        light: ColorValueModel.fromJson(json["Light"]),
        med: ColorValueModel.fromJson(json["Med"]),
        dark: ColorValueModel.fromJson(json["Dark"]),
        info: ColorValueModel.fromJson(json["Info"]),
        secondaryColor: ColorValueModel.fromJson(json["Secondary Color"]),
        success: ColorValueModel.fromJson(json["Success"]),
        warning: ColorValueModel.fromJson(json["Warning"]),
      );

  Map<String, dynamic> toJson() => {
        "Error": error.toJson(),
        "Light": light.toJson(),
        "Med": med.toJson(),
        "Dark": dark.toJson(),
        "Info": info.toJson(),
        "Secondary Color": secondaryColor.toJson(),
        "Success": success.toJson(),
        "Warning": warning.toJson(),
      };
}

class IconsModel {
  final ColorValueModel dark;
  final ColorValueModel light;

  const IconsModel({
    this.dark = const ColorValueModel(),
    this.light = const ColorValueModel(),
  });

  IconsModel copyWith({
    ColorValueModel? dark,
    ColorValueModel? light,
  }) =>
      IconsModel(
        dark: dark ?? this.dark,
        light: light ?? this.light,
      );

  factory IconsModel.fromJson(Map<String, dynamic> json) => IconsModel(
        dark: ColorValueModel.fromJson(json["Dark"]),
        light: ColorValueModel.fromJson(json["Light"]),
      );

  Map<String, dynamic> toJson() => {
        "Dark": dark.toJson(),
        "Light": light.toJson(),
      };
}

class LoyaltyModel {
  final ColorValueModel vitality;
  final ColorValueModel vitalityLight;
  final ColorValueModel drive;
  final ColorValueModel driveLight;

  const LoyaltyModel({
    this.vitality = const ColorValueModel(),
    this.vitalityLight = const ColorValueModel(),
    this.drive = const ColorValueModel(),
    this.driveLight = const ColorValueModel(),
  });

  LoyaltyModel copyWith({
    ColorValueModel? vitality,
    ColorValueModel? vitalityLight,
    ColorValueModel? drive,
    ColorValueModel? driveLight,
  }) =>
      LoyaltyModel(
        vitality: vitality ?? this.vitality,
        vitalityLight: vitalityLight ?? this.vitalityLight,
        drive: drive ?? this.drive,
        driveLight: driveLight ?? this.driveLight,
      );

  factory LoyaltyModel.fromJson(Map<String, dynamic> json) => LoyaltyModel(
        vitality: ColorValueModel.fromJson(json["Vitality"]),
        vitalityLight: ColorValueModel.fromJson(json["Vitality-Light"]),
        drive: ColorValueModel.fromJson(json["Drive"]),
        driveLight: ColorValueModel.fromJson(json["Drive-Light"]),
      );

  Map<String, dynamic> toJson() => {
        "Vitality": vitality.toJson(),
        "Vitality-Light": vitalityLight.toJson(),
        "Drive": drive.toJson(),
        "Drive-Light": driveLight.toJson(),
      };
}

class NeutralModel {
  final ColorValueModel light;
  final ColorValueModel lightgray;
  final ColorValueModel silver;
  final ColorValueModel darkgray;
  final ColorValueModel dimgray;
  final ColorValueModel darkslategray;
  final ColorValueModel newLight;

  const NeutralModel({
    this.light = const ColorValueModel(),
    this.lightgray = const ColorValueModel(),
    this.silver = const ColorValueModel(),
    this.darkgray = const ColorValueModel(),
    this.dimgray = const ColorValueModel(),
    this.darkslategray = const ColorValueModel(),
    this.newLight = const ColorValueModel(),
  });

  NeutralModel copyWith({
    ColorValueModel? light,
    ColorValueModel? lightgray,
    ColorValueModel? silver,
    ColorValueModel? darkgray,
    ColorValueModel? dimgray,
    ColorValueModel? darkslategray,
    ColorValueModel? newLight,
  }) =>
      NeutralModel(
        light: light ?? this.light,
        lightgray: lightgray ?? this.lightgray,
        silver: silver ?? this.silver,
        darkgray: darkgray ?? this.darkgray,
        dimgray: dimgray ?? this.dimgray,
        darkslategray: darkslategray ?? this.darkslategray,
        newLight: newLight ?? this.newLight,
      );

  factory NeutralModel.fromJson(Map<String, dynamic> json) => NeutralModel(
        light: ColorValueModel.fromJson(json["Light"]),
        lightgray: ColorValueModel.fromJson(json["Lightgray"]),
        silver: ColorValueModel.fromJson(json["Silver"]),
        darkgray: ColorValueModel.fromJson(json["Darkgray"]),
        dimgray: ColorValueModel.fromJson(json["Dimgray"]),
        darkslategray: ColorValueModel.fromJson(json["Darkslategray"]),
        newLight: ColorValueModel.fromJson(json["New Light"]),
      );

  Map<String, dynamic> toJson() => {
        "Light": light.toJson(),
        "Lightgray": lightgray.toJson(),
        "Silver": silver.toJson(),
        "Darkgray": darkgray.toJson(),
        "Dimgray": dimgray.toJson(),
        "Darkslategray": darkslategray.toJson(),
        "New Light": newLight.toJson(),
      };
}

class PrimaryModel {
  final ColorValueModel primaryColor;
  final ColorValueModel med;
  final ColorValueModel light;
  final ColorValueModel dark;
  final ColorValueModel logoGrey;
  final ColorValueModel logoLightGrey;

  const PrimaryModel({
    this.primaryColor = const ColorValueModel(),
    this.med = const ColorValueModel(),
    this.light = const ColorValueModel(),
    this.dark = const ColorValueModel(),
    this.logoGrey = const ColorValueModel(),
    this.logoLightGrey = const ColorValueModel(),
  });

  PrimaryModel copyWith({
    ColorValueModel? primaryColor,
    ColorValueModel? med,
    ColorValueModel? light,
    ColorValueModel? dark,
    ColorValueModel? logoGrey,
    ColorValueModel? logoLightGrey,
  }) =>
      PrimaryModel(
        primaryColor: primaryColor ?? this.primaryColor,
        med: med ?? this.med,
        light: light ?? this.light,
        dark: dark ?? this.dark,
        logoGrey: logoGrey ?? this.logoGrey,
        logoLightGrey: logoLightGrey ?? this.logoLightGrey,
      );

  factory PrimaryModel.fromJson(Map<String, dynamic> json) => PrimaryModel(
        primaryColor: ColorValueModel.fromJson(json["Primary Color"]),
        med: ColorValueModel.fromJson(json["Med"]),
        light: ColorValueModel.fromJson(json["Light"]),
        dark: ColorValueModel.fromJson(json["Dark"]),
        logoGrey: ColorValueModel.fromJson(json["Logo Grey"]),
        logoLightGrey: ColorValueModel.fromJson(json["Logo Light Grey"]),
      );

  Map<String, dynamic> toJson() => {
        "Primary Color": primaryColor.toJson(),
        "Med": med.toJson(),
        "Light": light.toJson(),
        "Dark": dark.toJson(),
        "Logo Grey": logoGrey.toJson(),
        "Logo Light Grey": logoLightGrey.toJson(),
      };
}

class TextModel {
  final ColorValueModel black;
  final ColorValueModel darkGray;

  const TextModel({
    this.black = const ColorValueModel(),
    this.darkGray = const ColorValueModel(),
  });

  TextModel copyWith({
    ColorValueModel? black,
    ColorValueModel? darkGray,
  }) =>
      TextModel(
        black: black ?? this.black,
        darkGray: darkGray ?? this.darkGray,
      );

  factory TextModel.fromJson(Map<String, dynamic> json) => TextModel(
        black: ColorValueModel.fromJson(json["Black"]),
        darkGray: ColorValueModel.fromJson(json["Dark-Gray"]),
      );

  Map<String, dynamic> toJson() => {
        "Black": black.toJson(),
        "Dark-Gray": darkGray.toJson(),
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

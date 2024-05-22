import 'dart:convert';

ColorsModel colorsModelsFromJson(String str) =>
    ColorsModel.fromJson(json.decode(str));

String colorsModelsToJson(ColorsModel data) => json.encode(data.toJson());

class ColorsModel {
  final Primary? primary;
  final Neutral? neutral;
  final Text? text;
  final White? white;
  final Error? secondary;
  final Bl? bl;
  final Error? success;
  final Error? info;
  final Error? warning;
  final Error? error;
  final Loyalty? loyalty;
  final Button? button;
  final Map<String, White>? graphics;
  final ECard? eCard;
  final Icons? icons;

  ColorsModel({
    this.primary,
    this.neutral,
    this.text,
    this.white,
    this.secondary,
    this.bl,
    this.success,
    this.info,
    this.warning,
    this.error,
    this.loyalty,
    this.button,
    this.graphics,
    this.eCard,
    this.icons,
  });

  ColorsModel copyWith({
    Primary? primary,
    Neutral? neutral,
    Text? text,
    White? white,
    Error? secondary,
    Bl? bl,
    Error? success,
    Error? info,
    Error? warning,
    Error? error,
    Loyalty? loyalty,
    Button? button,
    Map<String, White>? graphics,
    ECard? eCard,
    Icons? icons,
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
        primary:
            json["Primary"] == null ? null : Primary.fromJson(json["Primary"]),
        neutral:
            json["Neutral"] == null ? null : Neutral.fromJson(json["Neutral"]),
        text: json["Text"] == null ? null : Text.fromJson(json["Text"]),
        white: json["White"] == null ? null : White.fromJson(json["White"]),
        secondary: json["Secondary"] == null
            ? null
            : Error.fromJson(json["Secondary"]),
        bl: json["BL"] == null ? null : Bl.fromJson(json["BL"]),
        success:
            json["Success"] == null ? null : Error.fromJson(json["Success"]),
        info: json["Info"] == null ? null : Error.fromJson(json["Info"]),
        warning:
            json["Warning"] == null ? null : Error.fromJson(json["Warning"]),
        error: json["Error"] == null ? null : Error.fromJson(json["Error"]),
        loyalty:
            json["Loyalty"] == null ? null : Loyalty.fromJson(json["Loyalty"]),
        button: json["Button"] == null ? null : Button.fromJson(json["Button"]),
        graphics: Map.from(json["Graphics"]!)
            .map((k, v) => MapEntry<String, White>(k, White.fromJson(v))),
        eCard: json["eCard"] == null ? null : ECard.fromJson(json["eCard"]),
        icons: json["Icons"] == null ? null : Icons.fromJson(json["Icons"]),
      );

  Map<String, dynamic> toJson() => {
        "Primary": primary?.toJson(),
        "Neutral": neutral?.toJson(),
        "Text": text?.toJson(),
        "White": white?.toJson(),
        "Secondary": secondary?.toJson(),
        "BL": bl?.toJson(),
        "Success": success?.toJson(),
        "Info": info?.toJson(),
        "Warning": warning?.toJson(),
        "Error": error?.toJson(),
        "Loyalty": loyalty?.toJson(),
        "Button": button?.toJson(),
        "Graphics": Map.from(graphics!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "eCard": eCard?.toJson(),
        "Icons": icons?.toJson(),
      };
}

class Bl {
  final White? general;
  final White? generalLight;
  final White? healthLife;
  final White? healthLifeLight;
  final White? mobility;
  final White? mobilityLight;

  Bl({
    this.general,
    this.generalLight,
    this.healthLife,
    this.healthLifeLight,
    this.mobility,
    this.mobilityLight,
  });

  Bl copyWith({
    White? general,
    White? generalLight,
    White? healthLife,
    White? healthLifeLight,
    White? mobility,
    White? mobilityLight,
  }) =>
      Bl(
        general: general ?? this.general,
        generalLight: generalLight ?? this.generalLight,
        healthLife: healthLife ?? this.healthLife,
        healthLifeLight: healthLifeLight ?? this.healthLifeLight,
        mobility: mobility ?? this.mobility,
        mobilityLight: mobilityLight ?? this.mobilityLight,
      );

  factory Bl.fromJson(Map<String, dynamic> json) => Bl(
        general:
            json["General"] == null ? null : White.fromJson(json["General"]),
        generalLight: json["General-Light"] == null
            ? null
            : White.fromJson(json["General-Light"]),
        healthLife: json["Health&Life"] == null
            ? null
            : White.fromJson(json["Health&Life"]),
        healthLifeLight: json["Health&Life-Light"] == null
            ? null
            : White.fromJson(json["Health&Life-Light"]),
        mobility:
            json["Mobility"] == null ? null : White.fromJson(json["Mobility"]),
        mobilityLight: json["Mobility-Light"] == null
            ? null
            : White.fromJson(json["Mobility-Light"]),
      );

  Map<String, dynamic> toJson() => {
        "General": general?.toJson(),
        "General-Light": generalLight?.toJson(),
        "Health&Life": healthLife?.toJson(),
        "Health&Life-Light": healthLifeLight?.toJson(),
        "Mobility": mobility?.toJson(),
        "Mobility-Light": mobilityLight?.toJson(),
      };
}

class White {
  final Type? type;
  final String? value;

  White({
    this.type,
    this.value,
  });

  White copyWith({
    Type? type,
    String? value,
  }) =>
      White(
        type: type ?? this.type,
        value: value ?? this.value,
      );

  factory White.fromJson(Map<String, dynamic> json) => White(
        type: typeValues.map[json["\u0024type"]]!,
        value: json["\u0024value"],
      );

  Map<String, dynamic> toJson() => {
        "\u0024type": typeValues.reverse[type],
        "\u0024value": value,
      };
}

enum Type { COLOR }

final typeValues = EnumValues({"color": Type.COLOR});

class Button {
  final White? whiteButton;
  final White? secondaryButton;

  Button({
    this.whiteButton,
    this.secondaryButton,
  });

  Button copyWith({
    White? whiteButton,
    White? secondaryButton,
  }) =>
      Button(
        whiteButton: whiteButton ?? this.whiteButton,
        secondaryButton: secondaryButton ?? this.secondaryButton,
      );

  factory Button.fromJson(Map<String, dynamic> json) => Button(
        whiteButton: json["White-Button"] == null
            ? null
            : White.fromJson(json["White-Button"]),
        secondaryButton: json["Secondary-Button"] == null
            ? null
            : White.fromJson(json["Secondary-Button"]),
      );

  Map<String, dynamic> toJson() => {
        "White-Button": whiteButton?.toJson(),
        "Secondary-Button": secondaryButton?.toJson(),
      };
}

class ECard {
  final White? bg;

  ECard({
    this.bg,
  });

  ECard copyWith({
    White? bg,
  }) =>
      ECard(
        bg: bg ?? this.bg,
      );

  factory ECard.fromJson(Map<String, dynamic> json) => ECard(
        bg: json["BG"] == null ? null : White.fromJson(json["BG"]),
      );

  Map<String, dynamic> toJson() => {
        "BG": bg?.toJson(),
      };
}

class Error {
  final White? error;
  final White? light;
  final White? med;
  final White? dark;
  final White? info;
  final White? secondaryColor;
  final White? success;
  final White? warning;

  Error({
    this.error,
    this.light,
    this.med,
    this.dark,
    this.info,
    this.secondaryColor,
    this.success,
    this.warning,
  });

  Error copyWith({
    White? error,
    White? light,
    White? med,
    White? dark,
    White? info,
    White? secondaryColor,
    White? success,
    White? warning,
  }) =>
      Error(
        error: error ?? this.error,
        light: light ?? this.light,
        med: med ?? this.med,
        dark: dark ?? this.dark,
        info: info ?? this.info,
        secondaryColor: secondaryColor ?? this.secondaryColor,
        success: success ?? this.success,
        warning: warning ?? this.warning,
      );

  factory Error.fromJson(Map<String, dynamic> json) => Error(
        error: json["Error"] == null ? null : White.fromJson(json["Error"]),
        light: json["Light"] == null ? null : White.fromJson(json["Light"]),
        med: json["Med"] == null ? null : White.fromJson(json["Med"]),
        dark: json["Dark"] == null ? null : White.fromJson(json["Dark"]),
        info: json["Info"] == null ? null : White.fromJson(json["Info"]),
        secondaryColor: json["Secondary Color"] == null
            ? null
            : White.fromJson(json["Secondary Color"]),
        success:
            json["Success"] == null ? null : White.fromJson(json["Success"]),
        warning:
            json["Warning"] == null ? null : White.fromJson(json["Warning"]),
      );

  Map<String, dynamic> toJson() => {
        "Error": error?.toJson(),
        "Light": light?.toJson(),
        "Med": med?.toJson(),
        "Dark": dark?.toJson(),
        "Info": info?.toJson(),
        "Secondary Color": secondaryColor?.toJson(),
        "Success": success?.toJson(),
        "Warning": warning?.toJson(),
      };
}

class Icons {
  final White? dark;
  final White? light;

  Icons({
    this.dark,
    this.light,
  });

  Icons copyWith({
    White? dark,
    White? light,
  }) =>
      Icons(
        dark: dark ?? this.dark,
        light: light ?? this.light,
      );

  factory Icons.fromJson(Map<String, dynamic> json) => Icons(
        dark: json["Dark"] == null ? null : White.fromJson(json["Dark"]),
        light: json["Light"] == null ? null : White.fromJson(json["Light"]),
      );

  Map<String, dynamic> toJson() => {
        "Dark": dark?.toJson(),
        "Light": light?.toJson(),
      };
}

class Loyalty {
  final White? vitality;
  final White? vitalityLight;
  final White? drive;
  final White? driveLight;

  Loyalty({
    this.vitality,
    this.vitalityLight,
    this.drive,
    this.driveLight,
  });

  Loyalty copyWith({
    White? vitality,
    White? vitalityLight,
    White? drive,
    White? driveLight,
  }) =>
      Loyalty(
        vitality: vitality ?? this.vitality,
        vitalityLight: vitalityLight ?? this.vitalityLight,
        drive: drive ?? this.drive,
        driveLight: driveLight ?? this.driveLight,
      );

  factory Loyalty.fromJson(Map<String, dynamic> json) => Loyalty(
        vitality:
            json["Vitality"] == null ? null : White.fromJson(json["Vitality"]),
        vitalityLight: json["Vitality-Light"] == null
            ? null
            : White.fromJson(json["Vitality-Light"]),
        drive: json["Drive"] == null ? null : White.fromJson(json["Drive"]),
        driveLight: json["Drive-Light"] == null
            ? null
            : White.fromJson(json["Drive-Light"]),
      );

  Map<String, dynamic> toJson() => {
        "Vitality": vitality?.toJson(),
        "Vitality-Light": vitalityLight?.toJson(),
        "Drive": drive?.toJson(),
        "Drive-Light": driveLight?.toJson(),
      };
}

class Neutral {
  final White? light;
  final White? lightgray;
  final White? silver;
  final White? darkgray;
  final White? dimgray;
  final White? darkslategray;
  final White? newLight;

  Neutral({
    this.light,
    this.lightgray,
    this.silver,
    this.darkgray,
    this.dimgray,
    this.darkslategray,
    this.newLight,
  });

  Neutral copyWith({
    White? light,
    White? lightgray,
    White? silver,
    White? darkgray,
    White? dimgray,
    White? darkslategray,
    White? newLight,
  }) =>
      Neutral(
        light: light ?? this.light,
        lightgray: lightgray ?? this.lightgray,
        silver: silver ?? this.silver,
        darkgray: darkgray ?? this.darkgray,
        dimgray: dimgray ?? this.dimgray,
        darkslategray: darkslategray ?? this.darkslategray,
        newLight: newLight ?? this.newLight,
      );

  factory Neutral.fromJson(Map<String, dynamic> json) => Neutral(
        light: json["Light"] == null ? null : White.fromJson(json["Light"]),
        lightgray: json["Lightgray"] == null
            ? null
            : White.fromJson(json["Lightgray"]),
        silver: json["Silver"] == null ? null : White.fromJson(json["Silver"]),
        darkgray:
            json["Darkgray"] == null ? null : White.fromJson(json["Darkgray"]),
        dimgray:
            json["Dimgray"] == null ? null : White.fromJson(json["Dimgray"]),
        darkslategray: json["Darkslategray"] == null
            ? null
            : White.fromJson(json["Darkslategray"]),
        newLight: json["New Light"] == null
            ? null
            : White.fromJson(json["New Light"]),
      );

  Map<String, dynamic> toJson() => {
        "Light": light?.toJson(),
        "Lightgray": lightgray?.toJson(),
        "Silver": silver?.toJson(),
        "Darkgray": darkgray?.toJson(),
        "Dimgray": dimgray?.toJson(),
        "Darkslategray": darkslategray?.toJson(),
        "New Light": newLight?.toJson(),
      };
}

class Primary {
  final White? primaryColor;
  final White? med;
  final White? light;
  final White? dark;
  final White? logoGrey;
  final White? logoLightGrey;

  Primary({
    this.primaryColor,
    this.med,
    this.light,
    this.dark,
    this.logoGrey,
    this.logoLightGrey,
  });

  Primary copyWith({
    White? primaryColor,
    White? med,
    White? light,
    White? dark,
    White? logoGrey,
    White? logoLightGrey,
  }) =>
      Primary(
        primaryColor: primaryColor ?? this.primaryColor,
        med: med ?? this.med,
        light: light ?? this.light,
        dark: dark ?? this.dark,
        logoGrey: logoGrey ?? this.logoGrey,
        logoLightGrey: logoLightGrey ?? this.logoLightGrey,
      );

  factory Primary.fromJson(Map<String, dynamic> json) => Primary(
        primaryColor: json["Primary Color"] == null
            ? null
            : White.fromJson(json["Primary Color"]),
        med: json["Med"] == null ? null : White.fromJson(json["Med"]),
        light: json["Light"] == null ? null : White.fromJson(json["Light"]),
        dark: json["Dark"] == null ? null : White.fromJson(json["Dark"]),
        logoGrey: json["Logo Grey"] == null
            ? null
            : White.fromJson(json["Logo Grey"]),
        logoLightGrey: json["Logo Light Grey"] == null
            ? null
            : White.fromJson(json["Logo Light Grey"]),
      );

  Map<String, dynamic> toJson() => {
        "Primary Color": primaryColor?.toJson(),
        "Med": med?.toJson(),
        "Light": light?.toJson(),
        "Dark": dark?.toJson(),
        "Logo Grey": logoGrey?.toJson(),
        "Logo Light Grey": logoLightGrey?.toJson(),
      };
}

class Text {
  final White? black;
  final White? darkGray;

  Text({
    this.black,
    this.darkGray,
  });

  Text copyWith({
    White? black,
    White? darkGray,
  }) =>
      Text(
        black: black ?? this.black,
        darkGray: darkGray ?? this.darkGray,
      );

  factory Text.fromJson(Map<String, dynamic> json) => Text(
        black: json["Black"] == null ? null : White.fromJson(json["Black"]),
        darkGray: json["Dark-Gray"] == null
            ? null
            : White.fromJson(json["Dark-Gray"]),
      );

  Map<String, dynamic> toJson() => {
        "Black": black?.toJson(),
        "Dark-Gray": darkGray?.toJson(),
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

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:theme_app/gen/assets.gen.dart';
import 'package:theme_app/theme/colors_model.dart';

import 'home_screen.dart';
import 'theme/custom_colors_extension.dart';
import 'theme/tw_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initTheme();
  runApp(const MainApp());
}

Future<void> _initTheme() async {
  final lightTheme = await getFileJson(Assets.themes.lightTeme);
  final darkTheme = await getFileJson(Assets.themes.darkTheme);
  TWTheme.lightTheme = TWTheme.lightTheme.copyWith(extensions: [
    CustomColorsExtension(colorsModel: ColorsModel.fromJson(lightTheme))
  ]);
  TWTheme.darkTheme = TWTheme.darkTheme.copyWith(extensions: [
    CustomColorsExtension(colorsModel: ColorsModel.fromJson(darkTheme))
  ]);
}

Future<Map<String, dynamic>> getFileJson(String path) async {
  return json.decode(await rootBundle.loadString(path));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

final ValueNotifier<ThemeData> notifier = ValueNotifier(TWTheme.lightTheme);

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeData>(
      valueListenable: notifier,
      builder: (_, selectedTheme, __) {
        return MaterialApp(
          theme: selectedTheme,
          darkTheme: TWTheme.darkTheme,
          home: const HomeScreen(),
        );
      },
    );
  }

  @override
  void dispose() {
    notifier.dispose();
    super.dispose();
  }
}

import 'package:flutter/material.dart';

import 'theme/custom_colors_extension.dart';
import 'theme/tw_theme.dart';
import 'tw_constents.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

final ValueNotifier<ThemeData> _notifier = ValueNotifier(TWTheme.lightTheme);

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeData>(
      valueListenable: _notifier,
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
    _notifier.dispose();
    super.dispose();
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor.fromHex(Theme.of(context)
          .extension<CustomColorsExtension>()!
          .colorsModel
          .primary!
          .primaryColor!
          .value!),
      appBar: AppBar(
        title: const Text('New Theme'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: DropdownMenu<ThemeData>(
              initialSelection: _notifier.value,
              onSelected: (newTheme) {
                _notifier.value = newTheme!;
              },
              dropdownMenuEntries: [
                DropdownMenuEntry(
                    leadingIcon: Icon(
                      Icons.color_lens,
                      color: HexColor.fromHex(TWTheme.lightTheme
                          .extension<CustomColorsExtension>()!
                          .colorsModel
                          .primary!
                          .primaryColor!
                          .value!),
                    ),
                    label: 'lightTheme',
                    value: TWTheme.lightTheme),
                DropdownMenuEntry(
                    leadingIcon: Icon(
                      Icons.color_lens,
                      color: HexColor.fromHex(TWTheme.darkTheme
                          .extension<CustomColorsExtension>()!
                          .colorsModel
                          .primary!
                          .primaryColor!
                          .value!),
                    ),
                    label: 'darkTheme',
                    value: TWTheme.darkTheme),
                DropdownMenuEntry(
                    leadingIcon: Icon(
                      Icons.color_lens,
                      color: HexColor.fromHex(TWTheme.nationalDayTheme
                          .extension<CustomColorsExtension>()!
                          .colorsModel
                          .primary!
                          .primaryColor!
                          .value!),
                    ),
                    label: 'nationalDayTheme',
                    value: TWTheme.nationalDayTheme),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

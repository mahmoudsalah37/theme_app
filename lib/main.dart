import 'package:flutter/material.dart';

import 'theme/custom_colors_extension.dart';
import 'theme/tw_theme.dart';

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
      builder: (_, theme, __) {
        return MaterialApp(
          theme: theme,
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
      backgroundColor: Theme.of(context)
          .extension<CustomColorsExtension>()!
          .twPrimaryColorOne,
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
              onSelected: (value) {
                _notifier.value = value!;
              },
              dropdownMenuEntries: [
                DropdownMenuEntry(
                    leadingIcon: Icon(
                      Icons.color_lens,
                      color: TWTheme.lightTheme
                          .extension<CustomColorsExtension>()!
                          .twPrimaryColorOne,
                    ),
                    label: 'lightTheme',
                    value: TWTheme.lightTheme),
                DropdownMenuEntry(
                    leadingIcon: Icon(
                      Icons.color_lens,
                      color: TWTheme.darkTheme
                          .extension<CustomColorsExtension>()!
                          .twPrimaryColorOne,
                    ),
                    label: 'darkTheme',
                    value: TWTheme.darkTheme),
                DropdownMenuEntry(
                    leadingIcon: Icon(
                      Icons.color_lens,
                      color: TWTheme.nationalDayTheme
                          .extension<CustomColorsExtension>()!
                          .twPrimaryColorOne,
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

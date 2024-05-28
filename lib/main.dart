import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'theme/theme_manager.dart';
import 'theme/tw_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ThemeManager.instance.initTheme();
  runApp(const MainApp());
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

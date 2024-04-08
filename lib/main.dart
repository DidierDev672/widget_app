import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/app_theme.dart';
import 'package:widget_app/presentation/providers/theme_provider.dart';
import 'config/router/app_router.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int selectedColor = ref.watch(selectedColorProvider);
    final bool isDarkMode = ref.watch(isDarkModeProvider);
    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(
        selectedColor: selectedColor,
        isDarkMode: isDarkMode,
      ).getTheme(),
    );
  }
}

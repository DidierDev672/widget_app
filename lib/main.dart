import 'package:flutter/material.dart';
import 'package:widget_app/config/app_theme.dart';
import 'package:widget_app/presentation/screens/buttons/button_screens.dart';
import 'package:widget_app/presentation/screens/cards/cards_screen.dart';
import 'package:widget_app/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      home: const HomeScreen(),
      routes: {
        '/buttons': (context) => const ButtonScreens(),
        '/cards': (context) => const CardsScreens(),
      },
    );
  }
}

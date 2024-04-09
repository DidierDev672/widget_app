import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

// Un Simple int
final selectedColorProvider = StateProvider<int>((ref) => 0);

// Un objecto de tipo AppTheme (custom)
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = Estado = new AppTheme()
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}

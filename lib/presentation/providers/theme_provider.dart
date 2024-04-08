import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

// Un Simple int
final selectedColorProvider = StateProvider<int>((ref) => 0);

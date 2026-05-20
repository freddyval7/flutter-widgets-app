import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets/config/theme/app_theme.dart';

class IsDarkModeNotifier extends Notifier<bool> {
  @override
  bool build() => false;

  void toggleTheme() => state = !state;
}

final isDarkModeProvider = NotifierProvider<IsDarkModeNotifier, bool>(
  IsDarkModeNotifier.new,
);

// Inmutable Color List
final colorListProvider = Provider((ref) => colorList);

// Selected Color
class SelectedColorNotifier extends Notifier<int> {
  @override
  int build() => 0;

  void changeColor(int index) => state = index;
}

final selectedColorProvider = NotifierProvider<SelectedColorNotifier, int>(
  SelectedColorNotifier.new,
);

// App Theme Object Type (custom)
class ThemeNotifier extends Notifier<AppTheme> {
  @override
  AppTheme build() => AppTheme();

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int index) {
    state = state.copyWith(selectedColor: index);
  }
}

final themeNotifierProvider = NotifierProvider<ThemeNotifier, AppTheme>(
  ThemeNotifier.new,
);

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../config/config.dart';

final colorListStore = Provider((ref) => colorList);
final isDarkmodeStore = StateProvider((ref) => false);
final selectedColorStore = StateProvider((ref) => 0);

final themeNotifierStore = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}

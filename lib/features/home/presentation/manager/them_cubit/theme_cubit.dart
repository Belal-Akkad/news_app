import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/presentation/manager/them_cubit/theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(InitialThemeState());
  static ThemeCubit get(BuildContext context) {
    return BlocProvider.of(context);
  }

  bool isDark = false;

  switchTheme() {
    isDark = !isDark;
    if (isDark) {
      emit(DarkThemeState());
    } else {
      emit(LightThemeState());
    }
  }
}

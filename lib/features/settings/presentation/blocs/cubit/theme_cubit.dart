import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_constants.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(AppConstants.darkMode);

  void changeTheme(Brightness brightness) {
    if (brightness == Brightness.light) {
      emit(AppConstants.lightMode);
    } else {
      emit(AppConstants.darkMode);
    }
  }
}

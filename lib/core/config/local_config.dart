import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/core/constants/app_constants.dart';
import 'package:weather_app/core/extensions/extension_on_entity.dart';
import 'package:weather_app/features/home/domain/entity/current_weather_entity.dart';
import 'package:weather_app/features/home/domain/entity/forecast_weather_entity.dart';

class LocalConfig {
  SharedPreferences sharedPreferences;
  LocalConfig({
    required this.sharedPreferences,
  });
  Future<dynamic> getCurrentWeather() async {
    final weather =
        sharedPreferences.getString(AppConstants.sharedToCurrent) ?? "";
    final decoded = jsonDecode(weather);
    return decoded;
  }

  Future<void> setCurrentWeather(CurrentWeatherEntity entity) async {
    String str = jsonEncode(entity.toModel());
    sharedPreferences.setString(AppConstants.sharedToCurrent, str);
  }
  
  Future<List> getForecastWeather() async {
    final weather =
        sharedPreferences.getString(AppConstants.sharedToForecast) ?? "";
    final decoded = jsonDecode(weather);
    return decoded;
  }

  Future<void> setForecastWeather(List<ForecastWeatherEntity> enitiy) async {
    String smth =
        jsonEncode(enitiy.map((element) => element.toModel()).toList());
    sharedPreferences.setString(AppConstants.sharedToForecast, smth);
  }
}

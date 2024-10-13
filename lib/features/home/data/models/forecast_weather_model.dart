// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'forecast_weather_model.freezed.dart';
part 'forecast_weather_model.g.dart';

@freezed
class ForecastWeatherModel with _$ForecastWeatherModel {
  factory ForecastWeatherModel({
    required int dt,
    required MainForecastModel main,
    required List<WeatherForecastModel> weather,
    required WindForecastModel wind,
    required int visibility,
    required String dt_txt,
  }) = _ForecastWeatherModel;

  factory ForecastWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastWeatherModelImpl.fromJson(json);
}

@freezed
class MainForecastModel with _$MainForecastModel {
  factory MainForecastModel({
    required double temp,
    required double feels_like,
    required double temp_min,
    required double temp_max,
    required int pressure,
    required int humidity,
    required int sea_level,
    required int grnd_level,
  }) = _MainForecastModel;
  factory MainForecastModel.fromJson(Map<String, dynamic> json) =>
      _$MainForecastModelImpl.fromJson(json);
}

@freezed
class WeatherForecastModel with _$WeatherForecastModel {
  factory WeatherForecastModel({
    required int id,
    required String main,
    required String description,
    required String icon,
  }) = _WeatherForecastModel;

  factory WeatherForecastModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastModelImpl.fromJson(json);
}

@freezed
class WindForecastModel with _$WindForecastModel {
  factory WindForecastModel({
    required double speed,
    required int deg,
    required double gust,
  }) = _WindForecastModel;
  factory WindForecastModel.fromJson(Map<String, dynamic> json) =>
      _$WindForecastModelImpl.fromJson(json);
}

// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'current_daily_model.freezed.dart';
part 'current_daily_model.g.dart';

@freezed
class CurrentDailyModel with _$CurrentDailyModel {
  factory CurrentDailyModel(
      {
        required List<WeatherDailyModel> weather,
        required CoordDailyModel coord,
      required String base,
      required MainDailyModel main,
      required int visibility,
      required WindDailyModel wind,
      required int dt,
      required SysDailyModel sys,
      required String name}) = _CurrentDailyModel;
  factory CurrentDailyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentDailyModelImpl.fromJson(json);
}

@freezed
class WeatherDailyModel with _$WeatherDailyModel{
factory WeatherDailyModel({
required int id,
 required String main,
  required String description,
 required String icon,
})=_WeatherDailyModel;

factory WeatherDailyModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherDailyModelImpl.fromJson(json);
}

@freezed
class CoordDailyModel with _$CoordDailyModel {
  factory CoordDailyModel({
    required double lon,
    required double lat,
  }) = _CoordDailyModel;
  factory CoordDailyModel.fromJson(Map<String, dynamic> json) =>
      _$CoordDailyModelImpl.fromJson(json);
}

@freezed
class MainDailyModel with _$MainDailyModel {
  factory MainDailyModel({
    required double temp,
    required double feels_like,
    required double temp_min,
    required double temp_max,
    required int pressure,
    required int humidity,
    required int sea_level,
    required int grnd_level,
  }) = _MainDailyModel;
  factory MainDailyModel.fromJson(Map<String, dynamic> json) =>
      _$MainDailyModelImpl.fromJson(json);
}

@freezed
class WindDailyModel with _$WindDailyModel {
  factory WindDailyModel({
    required double speed,
    required int deg,
    required double gust,
  }) = _WindDailyModel;
  factory WindDailyModel.fromJson(Map<String, dynamic> json) =>
      _$WindDailyModelImpl.fromJson(json);
}

@freezed
class SysDailyModel with _$SysDailyModel {
  factory SysDailyModel({
    required int type,
    required int id,
    required String country,
    required int sunrise,
    required int sunset,
  }) = _SysDailyModel;
  factory SysDailyModel.fromJson(Map<String, dynamic> json) =>
      _$SysDailyModelImpl.fromJson(json);
}

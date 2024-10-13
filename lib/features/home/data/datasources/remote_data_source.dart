// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:weather_app/core/constants/app_constants.dart';
import 'package:weather_app/core/error/exception.dart';
import 'package:weather_app/features/home/data/models/current_daily_model.dart';
import 'package:weather_app/features/home/data/models/forecast_weather_model.dart';

abstract class RemoteDataSource {
  Future<CurrentDailyModel> getCurrentWeather(
      double lat, double lon, String locale);
  Future<CurrentDailyModel> getWeatherByCity(String name);
  Future<List<ForecastWeatherModel>> getForecastWeather(
      double lat, double lon, String locale);
}

class RemoteDataSourceImpl extends RemoteDataSource {
  Dio dio;
  RemoteDataSourceImpl({
    required this.dio,
  });
  @override
  Future<CurrentDailyModel> getCurrentWeather(
      double lat, double lon, String locale) async {
    late String units;
    locale == 'ru' ? units = 'metric' : units = 'imperial';
    final url =
        'weather?lat=$lat&lon=$lon&lang=$locale&units=$units&appid=${AppConstants.api}';
    final responce = await dio.get(
      url,
    );
    if (responce.statusCode == 200) {
      return CurrentDailyModel.fromJson(responce.data);
    }
    throw ServerException();
  }

  @override
  Future<CurrentDailyModel> getWeatherByCity(String name) async {
    final url = 'weather?q=$name&appid=${AppConstants.api}';
    final responce = await dio.get(url);
    if (responce.statusCode == 200) {
      print(responce.data);
      return CurrentDailyModel.fromJson(responce.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<ForecastWeatherModel>> getForecastWeather(
      double lat, double lon, String locale) async {
    late String units;
    locale == 'ru' ? units = 'metric' : units = 'imperial';
    final url =
        'forecast?lat=$lat&lon=$lon&lang=$locale&units=$units&appid=${AppConstants.api}';
    final responce = await dio.get(url);
    if (responce.statusCode == 200) {
      List<ForecastWeatherModel> forecast = (responce.data['list'] as List)
          .map((element) => ForecastWeatherModel.fromJson(element))
          .toList();
      return forecast;
    } else {
      throw ServerException();
    }
  }
}

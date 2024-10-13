// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:weather_app/core/config/local_config.dart';
import 'package:weather_app/features/home/data/models/current_daily_model.dart';
import 'package:weather_app/features/home/data/models/forecast_weather_model.dart';
import 'package:weather_app/features/home/domain/entity/current_weather_entity.dart';
import 'package:weather_app/features/home/domain/entity/forecast_weather_entity.dart';

abstract class LocalDataSources {
  Future<List<ForecastWeatherModel>> getForecast();
  Future<CurrentDailyModel> getCurrent();
  Future<void> setForecast(List<ForecastWeatherEntity> entity);
  Future<void> setCurrent(CurrentWeatherEntity entity);
}

class LocalDataSourcesImpl extends LocalDataSources {
  LocalConfig localConfig;
  LocalDataSourcesImpl({
    required this.localConfig,
  });
  @override
  Future<CurrentDailyModel> getCurrent() async {
    final responce = await localConfig.getCurrentWeather();
    return CurrentDailyModel.fromJson(responce);
  }

  @override
  Future<List<ForecastWeatherModel>> getForecast() async {
    final responce = await localConfig.getForecastWeather();
    final lst = responce
        .map((element) => ForecastWeatherModel.fromJson(element))
        .toList();
    return lst;
  }

  @override
  Future<void> setCurrent(CurrentWeatherEntity entity) {
    return localConfig.setCurrentWeather(entity);
  }

  @override
  Future<void> setForecast(List<ForecastWeatherEntity> entity) async {
    await localConfig.setForecastWeather(entity);
  }
}

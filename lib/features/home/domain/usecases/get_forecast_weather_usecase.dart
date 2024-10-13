// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:weather_app/core/error/failure.dart';
import 'package:weather_app/core/usecase/usecase.dart';
import 'package:weather_app/features/home/data/repositories/weather_repositories.dart';
import 'package:weather_app/features/home/domain/entity/forecast_weather_entity.dart';

class GetForecastWeatherUsecase
    extends Usecase<List<ForecastWeatherEntity>, ForecastParams> {
  WeatherRepositoriesImpl weatherRepositoriesImpl;
  GetForecastWeatherUsecase({
    required this.weatherRepositoriesImpl,
  });
  @override
  Future<Either<Failure, List<ForecastWeatherEntity>>> call(ForecastParams params) {
    return weatherRepositoriesImpl.getForecastWeather(params);
  }
}

class ForecastParams {
  double lon;
  double lat;
  String locale;
  ForecastParams({
    required this.lon,
    required this.lat,
    required this.locale,
  });
}

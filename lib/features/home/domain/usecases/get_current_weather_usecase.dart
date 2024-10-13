// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:weather_app/core/error/failure.dart';
import 'package:weather_app/core/usecase/usecase.dart';
import 'package:weather_app/features/home/data/repositories/weather_repositories.dart';
import 'package:weather_app/features/home/domain/entity/current_weather_entity.dart';

class GetCurrentWeatherUsecase
    extends Usecase<CurrentWeatherEntity, GetCurentParams> {
  WeatherRepositoriesImpl weatherRepositoriesImpl;
  GetCurrentWeatherUsecase({
    required this.weatherRepositoriesImpl,
  });
  @override
  Future<Either<Failure, CurrentWeatherEntity>> call(GetCurentParams params) {
    return weatherRepositoriesImpl.getCurrentWeather(params);
  }
}

class GetCurentParams {
  double lon;
  double lat;
  String locale;
  GetCurentParams({
    required this.locale,
    required this.lon,
    required this.lat,
  });
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:weather_app/core/error/failure.dart';
import 'package:weather_app/core/usecase/usecase.dart';
import 'package:weather_app/features/home/data/repositories/weather_repositories.dart';
import 'package:weather_app/features/home/domain/entity/current_weather_entity.dart';

class GetCurrentWeatherByNameUsecase
    extends Usecase<CurrentWeatherEntity, CurrentWeatherByNameParams> {
  WeatherRepositoriesImpl weatherRepositoriesImpl;
  GetCurrentWeatherByNameUsecase({
    required this.weatherRepositoriesImpl,
  });
  @override
  Future<Either<Failure, CurrentWeatherEntity>> call(
      CurrentWeatherByNameParams params) {
    return weatherRepositoriesImpl.getWeatherByCity(params.name);
  }
}

class CurrentWeatherByNameParams {
  String name;
  CurrentWeatherByNameParams({
    required this.name,
  });
}

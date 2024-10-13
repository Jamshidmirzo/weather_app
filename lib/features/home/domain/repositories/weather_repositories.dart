import 'package:dartz/dartz.dart';
import 'package:weather_app/core/error/failure.dart';
import 'package:weather_app/features/home/domain/entity/current_weather_entity.dart';
import 'package:weather_app/features/home/domain/entity/forecast_weather_entity.dart';
import 'package:weather_app/features/home/domain/usecases/get_current_weather_usecase.dart';
import 'package:weather_app/features/home/domain/usecases/get_forecast_weather_usecase.dart';

abstract class WeatherRepositories {
  Future<Either<Failure, CurrentWeatherEntity>> getCurrentWeather(GetCurentParams params);
  Future<Either<Failure, List<ForecastWeatherEntity>>> getForecastWeather(ForecastParams params);
  Future<Either<Failure, CurrentWeatherEntity>> getWeatherByCity(String name);
}

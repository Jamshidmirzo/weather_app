import 'package:dartz/dartz.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:weather_app/core/error/failure.dart';
import 'package:weather_app/core/extensions/extension_on_model.dart';
import 'package:weather_app/features/home/data/datasources/local_data_sources.dart';
import 'package:weather_app/features/home/data/datasources/remote_data_source.dart';
import 'package:weather_app/features/home/data/models/current_daily_model.dart';
import 'package:weather_app/features/home/data/models/forecast_weather_model.dart';
import 'package:weather_app/features/home/domain/entity/current_weather_entity.dart';
import 'package:weather_app/features/home/domain/entity/forecast_weather_entity.dart';
import 'package:weather_app/features/home/domain/repositories/weather_repositories.dart';
import 'package:weather_app/features/home/domain/usecases/get_current_weather_usecase.dart';
import 'package:weather_app/features/home/domain/usecases/get_forecast_weather_usecase.dart';

class WeatherRepositoriesImpl extends WeatherRepositories {
  RemoteDataSource remoteDataSource;
  InternetConnectionChecker internetConnectionChecker;
  LocalDataSources localDataSources;
  WeatherRepositoriesImpl({
    required this.remoteDataSource,
    required this.internetConnectionChecker,
    required this.localDataSources,
  });
  @override
  Future<Either<Failure, CurrentWeatherEntity>> getCurrentWeather(
      GetCurentParams params) {
    return _getCurrent(() => remoteDataSource.getCurrentWeather(
        params.lat, params.lon, params.locale));
  }

  @override
  Future<Either<Failure, List<ForecastWeatherEntity>>> getForecastWeather(
      ForecastParams params) async {
    return _getForecast(() => remoteDataSource.getForecastWeather(
        params.lat, params.lat, params.locale));
  }

  @override
  Future<Either<Failure, CurrentWeatherEntity>> getWeatherByCity(
      String name) async {
    return _getByName(() => remoteDataSource.getWeatherByCity(name));
  }

  Future<Either<Failure, List<ForecastWeatherEntity>>> _getForecast(
      Future<List<ForecastWeatherModel>> Function() forecast) async {
    if (await internetConnectionChecker.hasConnection) {
      try {
        final responce = await forecast();
        List<ForecastWeatherEntity> entites =
            responce.map((element) => element.toEntity()).toList();
        localDataSources.setForecast(entites);
        return Right(entites);
      } catch (e) {
        return Left(ServerFailure());
      }
    } else {
      try {
        final responce = await localDataSources.getForecast();
        List<ForecastWeatherEntity> entites =
            responce.map((element) => element.toEntity()).toList();
        localDataSources.setForecast(entites);
        return Right(entites);
      } catch (e) {
        return Left(CacheFailure());
      }
    }
  }

  Future<Either<Failure, CurrentWeatherEntity>> _getByName(
      Future<CurrentDailyModel> Function() getByName) async {
    try {
      final responce = await getByName();
      return Right(responce.toEntity());
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, CurrentWeatherEntity>> _getCurrent(
      Future<CurrentDailyModel> Function() getCurrent) async {
    if (await internetConnectionChecker.hasConnection) {
      try {
        final responce = await getCurrent();
        localDataSources.setCurrent(responce.toEntity());
        return Right(responce.toEntity());
      } catch (e) {
        return Left(ServerFailure());
      }
    } else {
      try {
        final responce = await localDataSources.getCurrent();
        return Right(responce.toEntity());
      } catch (e) {
        return Left(CacheFailure());
      }
    }
  }
}

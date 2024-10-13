// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:weather_app/core/constants/app_constants.dart';
import 'package:weather_app/core/error/failure.dart';
import 'package:weather_app/core/platform/geolocator_info.dart';
import 'package:weather_app/features/home/domain/entity/current_weather_entity.dart';
import 'package:weather_app/features/home/domain/entity/forecast_weather_entity.dart';
import 'package:weather_app/features/home/domain/usecases/get_current_weather_by_name_usecase.dart';
import 'package:weather_app/features/home/domain/usecases/get_current_weather_usecase.dart';
import 'package:weather_app/features/home/domain/usecases/get_forecast_weather_usecase.dart';

part 'weather_bloc.freezed.dart';
part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  GetCurrentWeatherByNameUsecase getCurrentWeatherByNameUsecase;
  GetCurrentWeatherUsecase getCurrentWeatherUsecase;
  GetForecastWeatherUsecase getForecastWeatherUsecase;
  GeolocatorInfoImpl geolocatorInfoImpl;
  WeatherBloc(
    this.getCurrentWeatherByNameUsecase,
    this.getCurrentWeatherUsecase,
    this.getForecastWeatherUsecase,
    this.geolocatorInfoImpl,
  ) : super(const WeatherState()) {
    on<_getCurrentWeather>(_getCurrent);
    on<_getForecastWeather>(_getForecast);
    on<_getWeatherByName>(_getByName);
    on<_getAllWeather>(_getAll);
    on<_doInitialState>(_doInitial);
  }
  Future<void> _doInitial(
      _doInitialState event, Emitter<WeatherState> emit) async {
    emit(state.copyWith(status: Status.Initial));
  }

  Future<void> _getAll(_getAllWeather event, Emitter<WeatherState> emit) async {
    final position = await geolocatorInfoImpl.getCurrentLocation();
    final responce = await getCurrentWeatherUsecase(
      GetCurentParams(
        locale: 'ru',
        lon: position.longitude,
        lat: position.latitude,
      ),
    );
    final responce2 = await getForecastWeatherUsecase(ForecastParams(
      locale: 'ru',
      lon: position.longitude,
      lat: position.latitude,
    ));
    responce.fold((error) {
      emit(
        state.copyWith(
          status: Status.Error,
          message: _failureMessage(error),
        ),
      );
    }, (data) {
      emit(state.copyWith(status: Status.Success, currentWeather: data));
    });

    responce2.fold((error) {
      emit(
        state.copyWith(
          status: Status.Error,
          message: _failureMessage(error),
        ),
      );
    }, (data) {
      emit(state.copyWith(status: Status.Success, forecastWeather: data));
    });
  }

  Future<void> _getCurrent(
      _getCurrentWeather event, Emitter<WeatherState> emit) async {
    final position = await geolocatorInfoImpl.getCurrentLocation();
    final responce = await getCurrentWeatherUsecase(
      GetCurentParams(
        locale: 'ru',
        lon: position.longitude,
        lat: position.latitude,
      ),
    );
    responce.fold((error) {
      emit(
        state.copyWith(
          status: Status.Error,
          message: _failureMessage(error),
        ),
      );
    }, (data) {
      emit(state.copyWith(status: Status.Success, currentWeather: data));
    });
  }

  Future<void> _getForecast(
      _getForecastWeather event, Emitter<WeatherState> emit) async {
    final position = await geolocatorInfoImpl.getCurrentLocation();
    final responce = await getForecastWeatherUsecase(ForecastParams(
      locale: 'ru',
      lon: position.longitude,
      lat: position.latitude,
    ));
    responce.fold((error) {
      emit(
        state.copyWith(
          status: Status.Error,
          message: _failureMessage(error),
        ),
      );
    }, (data) {
      emit(state.copyWith(status: Status.Success, forecastWeather: data));
    });
  }

  Future<void> _getByName(
      _getWeatherByName event, Emitter<WeatherState> emit) async {
    final responce = await getCurrentWeatherByNameUsecase(
        CurrentWeatherByNameParams(name: event.name));
    responce.fold((error) {
      emit(
        state.copyWith(
          status: Status.Error,
          message: _failureMessage(error),
        ),
      );
    }, (data) {
      emit(state.copyWith(status: Status.Success, currentWeather: data));
    });
  }

  String _failureMessage(Failure failure) {
    switch (failure) {
      case ServerFailure():
        return "Error when getting";
      case CacheFailure():
        return "Error when Caching";
      default:
        return 'Smth get wrong';
    }
  }
}

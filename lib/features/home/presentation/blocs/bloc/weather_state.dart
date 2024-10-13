part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    @Default(Status.Loading) Status status,
    CurrentWeatherEntity? currentWeather,
    List<ForecastWeatherEntity>? forecastWeather,
    String? message
  })=_WeatherState;
}

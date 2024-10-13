part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  factory WeatherEvent.getCurrentWeather() = _getCurrentWeather;
  factory WeatherEvent.getForecastWeather() = _getForecastWeather;
  factory WeatherEvent.getallWeather() = _getAllWeather;
  factory WeatherEvent.doInitlaState() = _doInitialState;

  factory WeatherEvent.getWeatherByName(String name) = _getWeatherByName;

}

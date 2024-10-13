// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastWeatherModelImpl _$$ForecastWeatherModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ForecastWeatherModelImpl(
      dt: (json['dt'] as num).toInt(),
      main: MainForecastModel.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherForecastModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      wind: WindForecastModel.fromJson(json['wind'] as Map<String, dynamic>),
      visibility: (json['visibility'] as num).toInt(),
      dt_txt: json['dt_txt'] as String,
    );

Map<String, dynamic> _$$ForecastWeatherModelImplToJson(
        _$ForecastWeatherModelImpl instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main,
      'weather': instance.weather,
      'wind': instance.wind,
      'visibility': instance.visibility,
      'dt_txt': instance.dt_txt,
    };

_$MainForecastModelImpl _$$MainForecastModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MainForecastModelImpl(
      temp: (json['temp'] as num).toDouble(),
      feels_like: (json['feels_like'] as num).toDouble(),
      temp_min: (json['temp_min'] as num).toDouble(),
      temp_max: (json['temp_max'] as num).toDouble(),
      pressure: (json['pressure'] as num).toInt(),
      humidity: (json['humidity'] as num).toInt(),
      sea_level: (json['sea_level'] as num).toInt(),
      grnd_level: (json['grnd_level'] as num).toInt(),
    );

Map<String, dynamic> _$$MainForecastModelImplToJson(
        _$MainForecastModelImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feels_like,
      'temp_min': instance.temp_min,
      'temp_max': instance.temp_max,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'sea_level': instance.sea_level,
      'grnd_level': instance.grnd_level,
    };

_$WeatherForecastModelImpl _$$WeatherForecastModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherForecastModelImpl(
      id: (json['id'] as num).toInt(),
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$WeatherForecastModelImplToJson(
        _$WeatherForecastModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_$WindForecastModelImpl _$$WindForecastModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WindForecastModelImpl(
      speed: (json['speed'] as num).toDouble(),
      deg: (json['deg'] as num).toInt(),
      gust: (json['gust'] as num).toDouble(),
    );

Map<String, dynamic> _$$WindForecastModelImplToJson(
        _$WindForecastModelImpl instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
    };

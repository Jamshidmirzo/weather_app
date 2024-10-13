// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_daily_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentDailyModelImpl _$$CurrentDailyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentDailyModelImpl(
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherDailyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      coord: CoordDailyModel.fromJson(json['coord'] as Map<String, dynamic>),
      base: json['base'] as String,
      main: MainDailyModel.fromJson(json['main'] as Map<String, dynamic>),
      visibility: (json['visibility'] as num).toInt(),
      wind: WindDailyModel.fromJson(json['wind'] as Map<String, dynamic>),
      dt: (json['dt'] as num).toInt(),
      sys: SysDailyModel.fromJson(json['sys'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CurrentDailyModelImplToJson(
        _$CurrentDailyModelImpl instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'coord': instance.coord,
      'base': instance.base,
      'main': instance.main,
      'visibility': instance.visibility,
      'wind': instance.wind,
      'dt': instance.dt,
      'sys': instance.sys,
      'name': instance.name,
    };

_$WeatherDailyModelImpl _$$WeatherDailyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherDailyModelImpl(
      id: (json['id'] as num).toInt(),
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$WeatherDailyModelImplToJson(
        _$WeatherDailyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_$CoordDailyModelImpl _$$CoordDailyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CoordDailyModelImpl(
      lon: (json['lon'] as num).toDouble(),
      lat: (json['lat'] as num).toDouble(),
    );

Map<String, dynamic> _$$CoordDailyModelImplToJson(
        _$CoordDailyModelImpl instance) =>
    <String, dynamic>{
      'lon': instance.lon,
      'lat': instance.lat,
    };

_$MainDailyModelImpl _$$MainDailyModelImplFromJson(Map<String, dynamic> json) =>
    _$MainDailyModelImpl(
      temp: (json['temp'] as num).toDouble(),
      feels_like: (json['feels_like'] as num).toDouble(),
      temp_min: (json['temp_min'] as num).toDouble(),
      temp_max: (json['temp_max'] as num).toDouble(),
      pressure: (json['pressure'] as num).toInt(),
      humidity: (json['humidity'] as num).toInt(),
      sea_level: (json['sea_level'] as num).toInt(),
      grnd_level: (json['grnd_level'] as num).toInt(),
    );

Map<String, dynamic> _$$MainDailyModelImplToJson(
        _$MainDailyModelImpl instance) =>
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

_$WindDailyModelImpl _$$WindDailyModelImplFromJson(Map<String, dynamic> json) =>
    _$WindDailyModelImpl(
      speed: (json['speed'] as num).toDouble(),
      deg: (json['deg'] as num).toInt(),
      gust: (json['gust'] as num).toDouble(),
    );

Map<String, dynamic> _$$WindDailyModelImplToJson(
        _$WindDailyModelImpl instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
    };

_$SysDailyModelImpl _$$SysDailyModelImplFromJson(Map<String, dynamic> json) =>
    _$SysDailyModelImpl(
      type: (json['type'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      country: json['country'] as String,
      sunrise: (json['sunrise'] as num).toInt(),
      sunset: (json['sunset'] as num).toInt(),
    );

Map<String, dynamic> _$$SysDailyModelImplToJson(_$SysDailyModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };

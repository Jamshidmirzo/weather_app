import 'package:weather_app/features/home/data/models/current_daily_model.dart';
import 'package:weather_app/features/home/data/models/forecast_weather_model.dart';
import 'package:weather_app/features/home/domain/entity/current_weather_entity.dart';
import 'package:weather_app/features/home/domain/entity/forecast_weather_entity.dart';

extension CurrentWeatherMapperToModel on CurrentDailyModel {
  CurrentWeatherEntity toEntity() {
    return CurrentWeatherEntity(
        coord: coord.toEntity(),
        weather: [weather.first.toEntity()],
        base: base,
        main: main.toEntity(),
        visibility: visibility,
        wind: wind.toEntity(),
        dt: dt,
        sys: sys.toEntity(),
        name: name);
  }
}

extension CoordDailyModelMapper on CoordDailyModel {
  CoordDailyEntity toEntity() {
    return CoordDailyEntity(lon: lon, lat: lat);
  }
}

extension WeatherDailyModelMapper on WeatherDailyModel {
  WeatherDailyEntity toEntity() {
    return WeatherDailyEntity(
        id: id, main: main, description: description, icon: icon);
  }
}

extension MainDailyModelMapper on MainDailyModel {
  MainDailyEntity toEntity() {
    return MainDailyEntity(
        temp: temp,
        feels_like: feels_like,
        temp_min: temp_min,
        temp_max: temp_max,
        pressure: pressure,
        humidity: humidity,
        sea_level: sea_level,
        grnd_level: grnd_level);
  }
}

extension WindDailyModelMapper on WindDailyModel {
  WindDailyuEntity toEntity() {
    return WindDailyuEntity(speed: speed, deg: deg, gust: gust);
  }
}

extension SysDailyModelMapper on SysDailyModel {
  SysDailyEntity toEntity() {
    return SysDailyEntity(
        type: type, id: id, country: country, sunrise: sunrise, sunset: sunset);
  }
}

extension ForecastWeatherModelMapper on ForecastWeatherModel {
  ForecastWeatherEntity toEntity() {
    return ForecastWeatherEntity(
        dt: dt,
        main: main.toEntity(),
        weather: [weather.first.toEntity()],
        wind: wind.toEntity(),
        visibility: visibility,
        dt_txt: dt_txt);
  }
}

extension MainForecastModelMapper on MainForecastModel {
  MainForecastEntity toEntity() {
    return MainForecastEntity(
        temp: temp,
        feels_like: feels_like,
        temp_min: temp_min,
        temp_max: temp_max,
        pressure: pressure,
        humidity: humidity,
        sea_level: sea_level,
        grnd_level: grnd_level);
  }
}

extension WeatherForecastModelMapper on WeatherForecastModel {
  WeatherForecastEntity toEntity() {
    return WeatherForecastEntity(
        id: id, main: main, description: description, icon: icon);
  }
}

extension WindForecastModelMapper on WindForecastModel {
  WindForecastEntity toEntity() {
    return WindForecastEntity(speed: speed, deg: deg, gust: gust);
  }
}

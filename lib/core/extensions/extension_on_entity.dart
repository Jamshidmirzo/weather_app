import 'package:weather_app/features/home/data/models/current_daily_model.dart';
import 'package:weather_app/features/home/data/models/forecast_weather_model.dart';
import 'package:weather_app/features/home/domain/entity/current_weather_entity.dart';
import 'package:weather_app/features/home/domain/entity/forecast_weather_entity.dart';

extension CurrentWeatherMapper on CurrentWeatherEntity {
  CurrentDailyModel toModel() {
    return CurrentDailyModel(
        weather: [weather.first.toModel()],
        coord: coord.toModel(),
        base: base,
        main: main.toModel(),
        visibility: visibility,
        wind: wind.toModel(),
        dt: dt,
        sys: sys.toModel(),
        name: name);
  }
}

extension WeatherDailyEntityMapper on WeatherDailyEntity {
  WeatherDailyModel toModel() {
    return WeatherDailyModel(
        id: id, main: main, description: description, icon: icon);
  }
}

extension CoordDailyEntityMapper on CoordDailyEntity {
  CoordDailyModel toModel() {
    return CoordDailyModel(lon: lon, lat: lat);
  }
}

extension SysDailyEntityMapper on SysDailyEntity {
  SysDailyModel toModel() {
    return SysDailyModel(
        type: type, id: id, country: country, sunrise: sunrise, sunset: sunset);
  }
}

extension MainDailyEntityMapper on MainDailyEntity {
  MainDailyModel toModel() {
    return MainDailyModel(
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

extension WindDailyuEntityMapper on WindDailyuEntity {
  WindDailyModel toModel() {
    return WindDailyModel(speed: speed, deg: deg, gust: gust);
  }
}

extension ForecastWeatherEntityMapper on ForecastWeatherEntity {
  ForecastWeatherModel toModel() {
   return ForecastWeatherModel(
        dt: dt,
        main: main.toModel(),
        weather: [weather.first.toModel()],
        wind: wind.toModel(),
        visibility: visibility,
        dt_txt: dt_txt);
  }
}

extension MainForecastEntityMapper on MainForecastEntity {
  MainForecastModel toModel() {
    return MainForecastModel(
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

extension WeatherForecastEntityMapper on WeatherForecastEntity {
  WeatherForecastModel toModel() {
    return WeatherForecastModel(
        id: id, main: main, description: description, icon: icon);
  }
}

extension WindForecastEntityMapper on WindForecastEntity {
  WindForecastModel toModel() {
   return WindForecastModel(speed: speed, deg: deg, gust: gust);
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: non_constant_identifier_names

class ForecastWeatherEntity {
  int dt;
  MainForecastEntity main;
  List<WeatherForecastEntity> weather;
  WindForecastEntity wind;
  int visibility;
  String dt_txt;
  ForecastWeatherEntity({
    required this.dt,
    required this.main,
    required this.weather,
    required this.wind,
    required this.visibility,
    required this.dt_txt,
  });
}

class MainForecastEntity {
  double temp;
  double feels_like;
  double temp_min;
  double temp_max;
  int pressure;
  int humidity;
  int sea_level;
  int grnd_level;
  MainForecastEntity({
    required this.temp,
    required this.feels_like,
    required this.temp_min,
    required this.temp_max,
    required this.pressure,
    required this.humidity,
    required this.sea_level,
    required this.grnd_level,
  });
}

class WeatherForecastEntity {
  int id;
  String main;
  String description;
  String icon;
  WeatherForecastEntity({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });
}

class WindForecastEntity {
  double speed;
  int deg;
  double gust;
  WindForecastEntity({
    required this.speed,
    required this.deg,
    required this.gust,
  });
}

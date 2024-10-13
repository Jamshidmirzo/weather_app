// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
class CurrentWeatherEntity {
  CoordDailyEntity coord;
  List<WeatherDailyEntity> weather;
  String base;
  MainDailyEntity main;
  int visibility;
  WindDailyuEntity wind;
  int dt;
  SysDailyEntity sys;
  String name;
  CurrentWeatherEntity({
    required this.coord,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.dt,
    required this.sys,
    required this.name,
  });
}

class CoordDailyEntity {
  double lon;
  double lat;
  CoordDailyEntity({
    required this.lon,
    required this.lat,
  });
}

class WeatherDailyEntity {
  int id;
  String main;
  String description;
  String icon;
  WeatherDailyEntity({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });
}

class MainDailyEntity {
  double temp;
  double feels_like;
  double temp_min;
  double temp_max;
  int pressure;
  int humidity;
  int sea_level;
  int grnd_level;
  MainDailyEntity({
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

class WindDailyuEntity {
  double speed;
  int deg;
  double gust;
  WindDailyuEntity({
    required this.speed,
    required this.deg,
    required this.gust,
  });
}

class SysDailyEntity {
  int type;
  int id;
  String country;
  int sunrise;
  int sunset;
  SysDailyEntity({
    required this.type,
    required this.id,
    required this.country,
    required this.sunrise,
    required this.sunset,
  });
}




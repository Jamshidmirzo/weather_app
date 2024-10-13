// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastWeatherModel _$ForecastWeatherModelFromJson(Map<String, dynamic> json) {
  return _ForecastWeatherModel.fromJson(json);
}

/// @nodoc
mixin _$ForecastWeatherModel {
  int get dt => throw _privateConstructorUsedError;
  MainForecastModel get main => throw _privateConstructorUsedError;
  List<WeatherForecastModel> get weather => throw _privateConstructorUsedError;
  WindForecastModel get wind => throw _privateConstructorUsedError;
  int get visibility => throw _privateConstructorUsedError;
  String get dt_txt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastWeatherModelCopyWith<ForecastWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWeatherModelCopyWith<$Res> {
  factory $ForecastWeatherModelCopyWith(ForecastWeatherModel value,
          $Res Function(ForecastWeatherModel) then) =
      _$ForecastWeatherModelCopyWithImpl<$Res, ForecastWeatherModel>;
  @useResult
  $Res call(
      {int dt,
      MainForecastModel main,
      List<WeatherForecastModel> weather,
      WindForecastModel wind,
      int visibility,
      String dt_txt});

  $MainForecastModelCopyWith<$Res> get main;
  $WindForecastModelCopyWith<$Res> get wind;
}

/// @nodoc
class _$ForecastWeatherModelCopyWithImpl<$Res,
        $Val extends ForecastWeatherModel>
    implements $ForecastWeatherModelCopyWith<$Res> {
  _$ForecastWeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? main = null,
    Object? weather = null,
    Object? wind = null,
    Object? visibility = null,
    Object? dt_txt = null,
  }) {
    return _then(_value.copyWith(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainForecastModel,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherForecastModel>,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindForecastModel,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      dt_txt: null == dt_txt
          ? _value.dt_txt
          : dt_txt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainForecastModelCopyWith<$Res> get main {
    return $MainForecastModelCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WindForecastModelCopyWith<$Res> get wind {
    return $WindForecastModelCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastWeatherModelImplCopyWith<$Res>
    implements $ForecastWeatherModelCopyWith<$Res> {
  factory _$$ForecastWeatherModelImplCopyWith(_$ForecastWeatherModelImpl value,
          $Res Function(_$ForecastWeatherModelImpl) then) =
      __$$ForecastWeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int dt,
      MainForecastModel main,
      List<WeatherForecastModel> weather,
      WindForecastModel wind,
      int visibility,
      String dt_txt});

  @override
  $MainForecastModelCopyWith<$Res> get main;
  @override
  $WindForecastModelCopyWith<$Res> get wind;
}

/// @nodoc
class __$$ForecastWeatherModelImplCopyWithImpl<$Res>
    extends _$ForecastWeatherModelCopyWithImpl<$Res, _$ForecastWeatherModelImpl>
    implements _$$ForecastWeatherModelImplCopyWith<$Res> {
  __$$ForecastWeatherModelImplCopyWithImpl(_$ForecastWeatherModelImpl _value,
      $Res Function(_$ForecastWeatherModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? main = null,
    Object? weather = null,
    Object? wind = null,
    Object? visibility = null,
    Object? dt_txt = null,
  }) {
    return _then(_$ForecastWeatherModelImpl(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainForecastModel,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherForecastModel>,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindForecastModel,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      dt_txt: null == dt_txt
          ? _value.dt_txt
          : dt_txt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastWeatherModelImpl implements _ForecastWeatherModel {
  _$ForecastWeatherModelImpl(
      {required this.dt,
      required this.main,
      required final List<WeatherForecastModel> weather,
      required this.wind,
      required this.visibility,
      required this.dt_txt})
      : _weather = weather;

  factory _$ForecastWeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastWeatherModelImplFromJson(json);

  @override
  final int dt;
  @override
  final MainForecastModel main;
  final List<WeatherForecastModel> _weather;
  @override
  List<WeatherForecastModel> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final WindForecastModel wind;
  @override
  final int visibility;
  @override
  final String dt_txt;

  @override
  String toString() {
    return 'ForecastWeatherModel(dt: $dt, main: $main, weather: $weather, wind: $wind, visibility: $visibility, dt_txt: $dt_txt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastWeatherModelImpl &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.dt_txt, dt_txt) || other.dt_txt == dt_txt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dt, main,
      const DeepCollectionEquality().hash(_weather), wind, visibility, dt_txt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastWeatherModelImplCopyWith<_$ForecastWeatherModelImpl>
      get copyWith =>
          __$$ForecastWeatherModelImplCopyWithImpl<_$ForecastWeatherModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastWeatherModelImplToJson(
      this,
    );
  }
}

abstract class _ForecastWeatherModel implements ForecastWeatherModel {
  factory _ForecastWeatherModel(
      {required final int dt,
      required final MainForecastModel main,
      required final List<WeatherForecastModel> weather,
      required final WindForecastModel wind,
      required final int visibility,
      required final String dt_txt}) = _$ForecastWeatherModelImpl;

  factory _ForecastWeatherModel.fromJson(Map<String, dynamic> json) =
      _$ForecastWeatherModelImpl.fromJson;

  @override
  int get dt;
  @override
  MainForecastModel get main;
  @override
  List<WeatherForecastModel> get weather;
  @override
  WindForecastModel get wind;
  @override
  int get visibility;
  @override
  String get dt_txt;
  @override
  @JsonKey(ignore: true)
  _$$ForecastWeatherModelImplCopyWith<_$ForecastWeatherModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MainForecastModel _$MainForecastModelFromJson(Map<String, dynamic> json) {
  return _MainForecastModel.fromJson(json);
}

/// @nodoc
mixin _$MainForecastModel {
  double get temp => throw _privateConstructorUsedError;
  double get feels_like => throw _privateConstructorUsedError;
  double get temp_min => throw _privateConstructorUsedError;
  double get temp_max => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  int get sea_level => throw _privateConstructorUsedError;
  int get grnd_level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainForecastModelCopyWith<MainForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainForecastModelCopyWith<$Res> {
  factory $MainForecastModelCopyWith(
          MainForecastModel value, $Res Function(MainForecastModel) then) =
      _$MainForecastModelCopyWithImpl<$Res, MainForecastModel>;
  @useResult
  $Res call(
      {double temp,
      double feels_like,
      double temp_min,
      double temp_max,
      int pressure,
      int humidity,
      int sea_level,
      int grnd_level});
}

/// @nodoc
class _$MainForecastModelCopyWithImpl<$Res, $Val extends MainForecastModel>
    implements $MainForecastModelCopyWith<$Res> {
  _$MainForecastModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feels_like = null,
    Object? temp_min = null,
    Object? temp_max = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? sea_level = null,
    Object? grnd_level = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feels_like: null == feels_like
          ? _value.feels_like
          : feels_like // ignore: cast_nullable_to_non_nullable
              as double,
      temp_min: null == temp_min
          ? _value.temp_min
          : temp_min // ignore: cast_nullable_to_non_nullable
              as double,
      temp_max: null == temp_max
          ? _value.temp_max
          : temp_max // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      sea_level: null == sea_level
          ? _value.sea_level
          : sea_level // ignore: cast_nullable_to_non_nullable
              as int,
      grnd_level: null == grnd_level
          ? _value.grnd_level
          : grnd_level // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainForecastModelImplCopyWith<$Res>
    implements $MainForecastModelCopyWith<$Res> {
  factory _$$MainForecastModelImplCopyWith(_$MainForecastModelImpl value,
          $Res Function(_$MainForecastModelImpl) then) =
      __$$MainForecastModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double temp,
      double feels_like,
      double temp_min,
      double temp_max,
      int pressure,
      int humidity,
      int sea_level,
      int grnd_level});
}

/// @nodoc
class __$$MainForecastModelImplCopyWithImpl<$Res>
    extends _$MainForecastModelCopyWithImpl<$Res, _$MainForecastModelImpl>
    implements _$$MainForecastModelImplCopyWith<$Res> {
  __$$MainForecastModelImplCopyWithImpl(_$MainForecastModelImpl _value,
      $Res Function(_$MainForecastModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feels_like = null,
    Object? temp_min = null,
    Object? temp_max = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? sea_level = null,
    Object? grnd_level = null,
  }) {
    return _then(_$MainForecastModelImpl(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feels_like: null == feels_like
          ? _value.feels_like
          : feels_like // ignore: cast_nullable_to_non_nullable
              as double,
      temp_min: null == temp_min
          ? _value.temp_min
          : temp_min // ignore: cast_nullable_to_non_nullable
              as double,
      temp_max: null == temp_max
          ? _value.temp_max
          : temp_max // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      sea_level: null == sea_level
          ? _value.sea_level
          : sea_level // ignore: cast_nullable_to_non_nullable
              as int,
      grnd_level: null == grnd_level
          ? _value.grnd_level
          : grnd_level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainForecastModelImpl implements _MainForecastModel {
  _$MainForecastModelImpl(
      {required this.temp,
      required this.feels_like,
      required this.temp_min,
      required this.temp_max,
      required this.pressure,
      required this.humidity,
      required this.sea_level,
      required this.grnd_level});

  factory _$MainForecastModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainForecastModelImplFromJson(json);

  @override
  final double temp;
  @override
  final double feels_like;
  @override
  final double temp_min;
  @override
  final double temp_max;
  @override
  final int pressure;
  @override
  final int humidity;
  @override
  final int sea_level;
  @override
  final int grnd_level;

  @override
  String toString() {
    return 'MainForecastModel(temp: $temp, feels_like: $feels_like, temp_min: $temp_min, temp_max: $temp_max, pressure: $pressure, humidity: $humidity, sea_level: $sea_level, grnd_level: $grnd_level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainForecastModelImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feels_like, feels_like) ||
                other.feels_like == feels_like) &&
            (identical(other.temp_min, temp_min) ||
                other.temp_min == temp_min) &&
            (identical(other.temp_max, temp_max) ||
                other.temp_max == temp_max) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.sea_level, sea_level) ||
                other.sea_level == sea_level) &&
            (identical(other.grnd_level, grnd_level) ||
                other.grnd_level == grnd_level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temp, feels_like, temp_min,
      temp_max, pressure, humidity, sea_level, grnd_level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainForecastModelImplCopyWith<_$MainForecastModelImpl> get copyWith =>
      __$$MainForecastModelImplCopyWithImpl<_$MainForecastModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainForecastModelImplToJson(
      this,
    );
  }
}

abstract class _MainForecastModel implements MainForecastModel {
  factory _MainForecastModel(
      {required final double temp,
      required final double feels_like,
      required final double temp_min,
      required final double temp_max,
      required final int pressure,
      required final int humidity,
      required final int sea_level,
      required final int grnd_level}) = _$MainForecastModelImpl;

  factory _MainForecastModel.fromJson(Map<String, dynamic> json) =
      _$MainForecastModelImpl.fromJson;

  @override
  double get temp;
  @override
  double get feels_like;
  @override
  double get temp_min;
  @override
  double get temp_max;
  @override
  int get pressure;
  @override
  int get humidity;
  @override
  int get sea_level;
  @override
  int get grnd_level;
  @override
  @JsonKey(ignore: true)
  _$$MainForecastModelImplCopyWith<_$MainForecastModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherForecastModel _$WeatherForecastModelFromJson(Map<String, dynamic> json) {
  return _WeatherForecastModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecastModel {
  int get id => throw _privateConstructorUsedError;
  String get main => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastModelCopyWith<WeatherForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastModelCopyWith<$Res> {
  factory $WeatherForecastModelCopyWith(WeatherForecastModel value,
          $Res Function(WeatherForecastModel) then) =
      _$WeatherForecastModelCopyWithImpl<$Res, WeatherForecastModel>;
  @useResult
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class _$WeatherForecastModelCopyWithImpl<$Res,
        $Val extends WeatherForecastModel>
    implements $WeatherForecastModelCopyWith<$Res> {
  _$WeatherForecastModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherForecastModelImplCopyWith<$Res>
    implements $WeatherForecastModelCopyWith<$Res> {
  factory _$$WeatherForecastModelImplCopyWith(_$WeatherForecastModelImpl value,
          $Res Function(_$WeatherForecastModelImpl) then) =
      __$$WeatherForecastModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class __$$WeatherForecastModelImplCopyWithImpl<$Res>
    extends _$WeatherForecastModelCopyWithImpl<$Res, _$WeatherForecastModelImpl>
    implements _$$WeatherForecastModelImplCopyWith<$Res> {
  __$$WeatherForecastModelImplCopyWithImpl(_$WeatherForecastModelImpl _value,
      $Res Function(_$WeatherForecastModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_$WeatherForecastModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherForecastModelImpl implements _WeatherForecastModel {
  _$WeatherForecastModelImpl(
      {required this.id,
      required this.main,
      required this.description,
      required this.icon});

  factory _$WeatherForecastModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherForecastModelImplFromJson(json);

  @override
  final int id;
  @override
  final String main;
  @override
  final String description;
  @override
  final String icon;

  @override
  String toString() {
    return 'WeatherForecastModel(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherForecastModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, main, description, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherForecastModelImplCopyWith<_$WeatherForecastModelImpl>
      get copyWith =>
          __$$WeatherForecastModelImplCopyWithImpl<_$WeatherForecastModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherForecastModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherForecastModel implements WeatherForecastModel {
  factory _WeatherForecastModel(
      {required final int id,
      required final String main,
      required final String description,
      required final String icon}) = _$WeatherForecastModelImpl;

  factory _WeatherForecastModel.fromJson(Map<String, dynamic> json) =
      _$WeatherForecastModelImpl.fromJson;

  @override
  int get id;
  @override
  String get main;
  @override
  String get description;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$WeatherForecastModelImplCopyWith<_$WeatherForecastModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WindForecastModel _$WindForecastModelFromJson(Map<String, dynamic> json) {
  return _WindForecastModel.fromJson(json);
}

/// @nodoc
mixin _$WindForecastModel {
  double get speed => throw _privateConstructorUsedError;
  int get deg => throw _privateConstructorUsedError;
  double get gust => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WindForecastModelCopyWith<WindForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindForecastModelCopyWith<$Res> {
  factory $WindForecastModelCopyWith(
          WindForecastModel value, $Res Function(WindForecastModel) then) =
      _$WindForecastModelCopyWithImpl<$Res, WindForecastModel>;
  @useResult
  $Res call({double speed, int deg, double gust});
}

/// @nodoc
class _$WindForecastModelCopyWithImpl<$Res, $Val extends WindForecastModel>
    implements $WindForecastModelCopyWith<$Res> {
  _$WindForecastModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? deg = null,
    Object? gust = null,
  }) {
    return _then(_value.copyWith(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      deg: null == deg
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as int,
      gust: null == gust
          ? _value.gust
          : gust // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WindForecastModelImplCopyWith<$Res>
    implements $WindForecastModelCopyWith<$Res> {
  factory _$$WindForecastModelImplCopyWith(_$WindForecastModelImpl value,
          $Res Function(_$WindForecastModelImpl) then) =
      __$$WindForecastModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double speed, int deg, double gust});
}

/// @nodoc
class __$$WindForecastModelImplCopyWithImpl<$Res>
    extends _$WindForecastModelCopyWithImpl<$Res, _$WindForecastModelImpl>
    implements _$$WindForecastModelImplCopyWith<$Res> {
  __$$WindForecastModelImplCopyWithImpl(_$WindForecastModelImpl _value,
      $Res Function(_$WindForecastModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? deg = null,
    Object? gust = null,
  }) {
    return _then(_$WindForecastModelImpl(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      deg: null == deg
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as int,
      gust: null == gust
          ? _value.gust
          : gust // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WindForecastModelImpl implements _WindForecastModel {
  _$WindForecastModelImpl(
      {required this.speed, required this.deg, required this.gust});

  factory _$WindForecastModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WindForecastModelImplFromJson(json);

  @override
  final double speed;
  @override
  final int deg;
  @override
  final double gust;

  @override
  String toString() {
    return 'WindForecastModel(speed: $speed, deg: $deg, gust: $gust)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WindForecastModelImpl &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.deg, deg) || other.deg == deg) &&
            (identical(other.gust, gust) || other.gust == gust));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, speed, deg, gust);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WindForecastModelImplCopyWith<_$WindForecastModelImpl> get copyWith =>
      __$$WindForecastModelImplCopyWithImpl<_$WindForecastModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WindForecastModelImplToJson(
      this,
    );
  }
}

abstract class _WindForecastModel implements WindForecastModel {
  factory _WindForecastModel(
      {required final double speed,
      required final int deg,
      required final double gust}) = _$WindForecastModelImpl;

  factory _WindForecastModel.fromJson(Map<String, dynamic> json) =
      _$WindForecastModelImpl.fromJson;

  @override
  double get speed;
  @override
  int get deg;
  @override
  double get gust;
  @override
  @JsonKey(ignore: true)
  _$$WindForecastModelImplCopyWith<_$WindForecastModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

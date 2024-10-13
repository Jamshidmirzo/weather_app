// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_daily_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentDailyModel _$CurrentDailyModelFromJson(Map<String, dynamic> json) {
  return _CurrentDailyModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentDailyModel {
  List<WeatherDailyModel> get weather => throw _privateConstructorUsedError;
  CoordDailyModel get coord => throw _privateConstructorUsedError;
  String get base => throw _privateConstructorUsedError;
  MainDailyModel get main => throw _privateConstructorUsedError;
  int get visibility => throw _privateConstructorUsedError;
  WindDailyModel get wind => throw _privateConstructorUsedError;
  int get dt => throw _privateConstructorUsedError;
  SysDailyModel get sys => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentDailyModelCopyWith<CurrentDailyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentDailyModelCopyWith<$Res> {
  factory $CurrentDailyModelCopyWith(
          CurrentDailyModel value, $Res Function(CurrentDailyModel) then) =
      _$CurrentDailyModelCopyWithImpl<$Res, CurrentDailyModel>;
  @useResult
  $Res call(
      {List<WeatherDailyModel> weather,
      CoordDailyModel coord,
      String base,
      MainDailyModel main,
      int visibility,
      WindDailyModel wind,
      int dt,
      SysDailyModel sys,
      String name});

  $CoordDailyModelCopyWith<$Res> get coord;
  $MainDailyModelCopyWith<$Res> get main;
  $WindDailyModelCopyWith<$Res> get wind;
  $SysDailyModelCopyWith<$Res> get sys;
}

/// @nodoc
class _$CurrentDailyModelCopyWithImpl<$Res, $Val extends CurrentDailyModel>
    implements $CurrentDailyModelCopyWith<$Res> {
  _$CurrentDailyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
    Object? coord = null,
    Object? base = null,
    Object? main = null,
    Object? visibility = null,
    Object? wind = null,
    Object? dt = null,
    Object? sys = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherDailyModel>,
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as CoordDailyModel,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainDailyModel,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindDailyModel,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SysDailyModel,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordDailyModelCopyWith<$Res> get coord {
    return $CoordDailyModelCopyWith<$Res>(_value.coord, (value) {
      return _then(_value.copyWith(coord: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MainDailyModelCopyWith<$Res> get main {
    return $MainDailyModelCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WindDailyModelCopyWith<$Res> get wind {
    return $WindDailyModelCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SysDailyModelCopyWith<$Res> get sys {
    return $SysDailyModelCopyWith<$Res>(_value.sys, (value) {
      return _then(_value.copyWith(sys: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentDailyModelImplCopyWith<$Res>
    implements $CurrentDailyModelCopyWith<$Res> {
  factory _$$CurrentDailyModelImplCopyWith(_$CurrentDailyModelImpl value,
          $Res Function(_$CurrentDailyModelImpl) then) =
      __$$CurrentDailyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<WeatherDailyModel> weather,
      CoordDailyModel coord,
      String base,
      MainDailyModel main,
      int visibility,
      WindDailyModel wind,
      int dt,
      SysDailyModel sys,
      String name});

  @override
  $CoordDailyModelCopyWith<$Res> get coord;
  @override
  $MainDailyModelCopyWith<$Res> get main;
  @override
  $WindDailyModelCopyWith<$Res> get wind;
  @override
  $SysDailyModelCopyWith<$Res> get sys;
}

/// @nodoc
class __$$CurrentDailyModelImplCopyWithImpl<$Res>
    extends _$CurrentDailyModelCopyWithImpl<$Res, _$CurrentDailyModelImpl>
    implements _$$CurrentDailyModelImplCopyWith<$Res> {
  __$$CurrentDailyModelImplCopyWithImpl(_$CurrentDailyModelImpl _value,
      $Res Function(_$CurrentDailyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
    Object? coord = null,
    Object? base = null,
    Object? main = null,
    Object? visibility = null,
    Object? wind = null,
    Object? dt = null,
    Object? sys = null,
    Object? name = null,
  }) {
    return _then(_$CurrentDailyModelImpl(
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherDailyModel>,
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as CoordDailyModel,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainDailyModel,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindDailyModel,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SysDailyModel,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentDailyModelImpl implements _CurrentDailyModel {
  _$CurrentDailyModelImpl(
      {required final List<WeatherDailyModel> weather,
      required this.coord,
      required this.base,
      required this.main,
      required this.visibility,
      required this.wind,
      required this.dt,
      required this.sys,
      required this.name})
      : _weather = weather;

  factory _$CurrentDailyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentDailyModelImplFromJson(json);

  final List<WeatherDailyModel> _weather;
  @override
  List<WeatherDailyModel> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final CoordDailyModel coord;
  @override
  final String base;
  @override
  final MainDailyModel main;
  @override
  final int visibility;
  @override
  final WindDailyModel wind;
  @override
  final int dt;
  @override
  final SysDailyModel sys;
  @override
  final String name;

  @override
  String toString() {
    return 'CurrentDailyModel(weather: $weather, coord: $coord, base: $base, main: $main, visibility: $visibility, wind: $wind, dt: $dt, sys: $sys, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentDailyModelImpl &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.coord, coord) || other.coord == coord) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_weather),
      coord,
      base,
      main,
      visibility,
      wind,
      dt,
      sys,
      name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentDailyModelImplCopyWith<_$CurrentDailyModelImpl> get copyWith =>
      __$$CurrentDailyModelImplCopyWithImpl<_$CurrentDailyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentDailyModelImplToJson(
      this,
    );
  }
}

abstract class _CurrentDailyModel implements CurrentDailyModel {
  factory _CurrentDailyModel(
      {required final List<WeatherDailyModel> weather,
      required final CoordDailyModel coord,
      required final String base,
      required final MainDailyModel main,
      required final int visibility,
      required final WindDailyModel wind,
      required final int dt,
      required final SysDailyModel sys,
      required final String name}) = _$CurrentDailyModelImpl;

  factory _CurrentDailyModel.fromJson(Map<String, dynamic> json) =
      _$CurrentDailyModelImpl.fromJson;

  @override
  List<WeatherDailyModel> get weather;
  @override
  CoordDailyModel get coord;
  @override
  String get base;
  @override
  MainDailyModel get main;
  @override
  int get visibility;
  @override
  WindDailyModel get wind;
  @override
  int get dt;
  @override
  SysDailyModel get sys;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CurrentDailyModelImplCopyWith<_$CurrentDailyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherDailyModel _$WeatherDailyModelFromJson(Map<String, dynamic> json) {
  return _WeatherDailyModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherDailyModel {
  int get id => throw _privateConstructorUsedError;
  String get main => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDailyModelCopyWith<WeatherDailyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDailyModelCopyWith<$Res> {
  factory $WeatherDailyModelCopyWith(
          WeatherDailyModel value, $Res Function(WeatherDailyModel) then) =
      _$WeatherDailyModelCopyWithImpl<$Res, WeatherDailyModel>;
  @useResult
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class _$WeatherDailyModelCopyWithImpl<$Res, $Val extends WeatherDailyModel>
    implements $WeatherDailyModelCopyWith<$Res> {
  _$WeatherDailyModelCopyWithImpl(this._value, this._then);

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
abstract class _$$WeatherDailyModelImplCopyWith<$Res>
    implements $WeatherDailyModelCopyWith<$Res> {
  factory _$$WeatherDailyModelImplCopyWith(_$WeatherDailyModelImpl value,
          $Res Function(_$WeatherDailyModelImpl) then) =
      __$$WeatherDailyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class __$$WeatherDailyModelImplCopyWithImpl<$Res>
    extends _$WeatherDailyModelCopyWithImpl<$Res, _$WeatherDailyModelImpl>
    implements _$$WeatherDailyModelImplCopyWith<$Res> {
  __$$WeatherDailyModelImplCopyWithImpl(_$WeatherDailyModelImpl _value,
      $Res Function(_$WeatherDailyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_$WeatherDailyModelImpl(
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
class _$WeatherDailyModelImpl implements _WeatherDailyModel {
  _$WeatherDailyModelImpl(
      {required this.id,
      required this.main,
      required this.description,
      required this.icon});

  factory _$WeatherDailyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherDailyModelImplFromJson(json);

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
    return 'WeatherDailyModel(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDailyModelImpl &&
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
  _$$WeatherDailyModelImplCopyWith<_$WeatherDailyModelImpl> get copyWith =>
      __$$WeatherDailyModelImplCopyWithImpl<_$WeatherDailyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherDailyModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherDailyModel implements WeatherDailyModel {
  factory _WeatherDailyModel(
      {required final int id,
      required final String main,
      required final String description,
      required final String icon}) = _$WeatherDailyModelImpl;

  factory _WeatherDailyModel.fromJson(Map<String, dynamic> json) =
      _$WeatherDailyModelImpl.fromJson;

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
  _$$WeatherDailyModelImplCopyWith<_$WeatherDailyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoordDailyModel _$CoordDailyModelFromJson(Map<String, dynamic> json) {
  return _CoordDailyModel.fromJson(json);
}

/// @nodoc
mixin _$CoordDailyModel {
  double get lon => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordDailyModelCopyWith<CoordDailyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordDailyModelCopyWith<$Res> {
  factory $CoordDailyModelCopyWith(
          CoordDailyModel value, $Res Function(CoordDailyModel) then) =
      _$CoordDailyModelCopyWithImpl<$Res, CoordDailyModel>;
  @useResult
  $Res call({double lon, double lat});
}

/// @nodoc
class _$CoordDailyModelCopyWithImpl<$Res, $Val extends CoordDailyModel>
    implements $CoordDailyModelCopyWith<$Res> {
  _$CoordDailyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lon = null,
    Object? lat = null,
  }) {
    return _then(_value.copyWith(
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoordDailyModelImplCopyWith<$Res>
    implements $CoordDailyModelCopyWith<$Res> {
  factory _$$CoordDailyModelImplCopyWith(_$CoordDailyModelImpl value,
          $Res Function(_$CoordDailyModelImpl) then) =
      __$$CoordDailyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lon, double lat});
}

/// @nodoc
class __$$CoordDailyModelImplCopyWithImpl<$Res>
    extends _$CoordDailyModelCopyWithImpl<$Res, _$CoordDailyModelImpl>
    implements _$$CoordDailyModelImplCopyWith<$Res> {
  __$$CoordDailyModelImplCopyWithImpl(
      _$CoordDailyModelImpl _value, $Res Function(_$CoordDailyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lon = null,
    Object? lat = null,
  }) {
    return _then(_$CoordDailyModelImpl(
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoordDailyModelImpl implements _CoordDailyModel {
  _$CoordDailyModelImpl({required this.lon, required this.lat});

  factory _$CoordDailyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoordDailyModelImplFromJson(json);

  @override
  final double lon;
  @override
  final double lat;

  @override
  String toString() {
    return 'CoordDailyModel(lon: $lon, lat: $lat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordDailyModelImpl &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.lat, lat) || other.lat == lat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lon, lat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordDailyModelImplCopyWith<_$CoordDailyModelImpl> get copyWith =>
      __$$CoordDailyModelImplCopyWithImpl<_$CoordDailyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoordDailyModelImplToJson(
      this,
    );
  }
}

abstract class _CoordDailyModel implements CoordDailyModel {
  factory _CoordDailyModel(
      {required final double lon,
      required final double lat}) = _$CoordDailyModelImpl;

  factory _CoordDailyModel.fromJson(Map<String, dynamic> json) =
      _$CoordDailyModelImpl.fromJson;

  @override
  double get lon;
  @override
  double get lat;
  @override
  @JsonKey(ignore: true)
  _$$CoordDailyModelImplCopyWith<_$CoordDailyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MainDailyModel _$MainDailyModelFromJson(Map<String, dynamic> json) {
  return _MainDailyModel.fromJson(json);
}

/// @nodoc
mixin _$MainDailyModel {
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
  $MainDailyModelCopyWith<MainDailyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainDailyModelCopyWith<$Res> {
  factory $MainDailyModelCopyWith(
          MainDailyModel value, $Res Function(MainDailyModel) then) =
      _$MainDailyModelCopyWithImpl<$Res, MainDailyModel>;
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
class _$MainDailyModelCopyWithImpl<$Res, $Val extends MainDailyModel>
    implements $MainDailyModelCopyWith<$Res> {
  _$MainDailyModelCopyWithImpl(this._value, this._then);

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
abstract class _$$MainDailyModelImplCopyWith<$Res>
    implements $MainDailyModelCopyWith<$Res> {
  factory _$$MainDailyModelImplCopyWith(_$MainDailyModelImpl value,
          $Res Function(_$MainDailyModelImpl) then) =
      __$$MainDailyModelImplCopyWithImpl<$Res>;
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
class __$$MainDailyModelImplCopyWithImpl<$Res>
    extends _$MainDailyModelCopyWithImpl<$Res, _$MainDailyModelImpl>
    implements _$$MainDailyModelImplCopyWith<$Res> {
  __$$MainDailyModelImplCopyWithImpl(
      _$MainDailyModelImpl _value, $Res Function(_$MainDailyModelImpl) _then)
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
    return _then(_$MainDailyModelImpl(
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
class _$MainDailyModelImpl implements _MainDailyModel {
  _$MainDailyModelImpl(
      {required this.temp,
      required this.feels_like,
      required this.temp_min,
      required this.temp_max,
      required this.pressure,
      required this.humidity,
      required this.sea_level,
      required this.grnd_level});

  factory _$MainDailyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainDailyModelImplFromJson(json);

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
    return 'MainDailyModel(temp: $temp, feels_like: $feels_like, temp_min: $temp_min, temp_max: $temp_max, pressure: $pressure, humidity: $humidity, sea_level: $sea_level, grnd_level: $grnd_level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainDailyModelImpl &&
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
  _$$MainDailyModelImplCopyWith<_$MainDailyModelImpl> get copyWith =>
      __$$MainDailyModelImplCopyWithImpl<_$MainDailyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainDailyModelImplToJson(
      this,
    );
  }
}

abstract class _MainDailyModel implements MainDailyModel {
  factory _MainDailyModel(
      {required final double temp,
      required final double feels_like,
      required final double temp_min,
      required final double temp_max,
      required final int pressure,
      required final int humidity,
      required final int sea_level,
      required final int grnd_level}) = _$MainDailyModelImpl;

  factory _MainDailyModel.fromJson(Map<String, dynamic> json) =
      _$MainDailyModelImpl.fromJson;

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
  _$$MainDailyModelImplCopyWith<_$MainDailyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WindDailyModel _$WindDailyModelFromJson(Map<String, dynamic> json) {
  return _WindDailyModel.fromJson(json);
}

/// @nodoc
mixin _$WindDailyModel {
  double get speed => throw _privateConstructorUsedError;
  int get deg => throw _privateConstructorUsedError;
  double get gust => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WindDailyModelCopyWith<WindDailyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindDailyModelCopyWith<$Res> {
  factory $WindDailyModelCopyWith(
          WindDailyModel value, $Res Function(WindDailyModel) then) =
      _$WindDailyModelCopyWithImpl<$Res, WindDailyModel>;
  @useResult
  $Res call({double speed, int deg, double gust});
}

/// @nodoc
class _$WindDailyModelCopyWithImpl<$Res, $Val extends WindDailyModel>
    implements $WindDailyModelCopyWith<$Res> {
  _$WindDailyModelCopyWithImpl(this._value, this._then);

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
abstract class _$$WindDailyModelImplCopyWith<$Res>
    implements $WindDailyModelCopyWith<$Res> {
  factory _$$WindDailyModelImplCopyWith(_$WindDailyModelImpl value,
          $Res Function(_$WindDailyModelImpl) then) =
      __$$WindDailyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double speed, int deg, double gust});
}

/// @nodoc
class __$$WindDailyModelImplCopyWithImpl<$Res>
    extends _$WindDailyModelCopyWithImpl<$Res, _$WindDailyModelImpl>
    implements _$$WindDailyModelImplCopyWith<$Res> {
  __$$WindDailyModelImplCopyWithImpl(
      _$WindDailyModelImpl _value, $Res Function(_$WindDailyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? deg = null,
    Object? gust = null,
  }) {
    return _then(_$WindDailyModelImpl(
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
class _$WindDailyModelImpl implements _WindDailyModel {
  _$WindDailyModelImpl(
      {required this.speed, required this.deg, required this.gust});

  factory _$WindDailyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WindDailyModelImplFromJson(json);

  @override
  final double speed;
  @override
  final int deg;
  @override
  final double gust;

  @override
  String toString() {
    return 'WindDailyModel(speed: $speed, deg: $deg, gust: $gust)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WindDailyModelImpl &&
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
  _$$WindDailyModelImplCopyWith<_$WindDailyModelImpl> get copyWith =>
      __$$WindDailyModelImplCopyWithImpl<_$WindDailyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WindDailyModelImplToJson(
      this,
    );
  }
}

abstract class _WindDailyModel implements WindDailyModel {
  factory _WindDailyModel(
      {required final double speed,
      required final int deg,
      required final double gust}) = _$WindDailyModelImpl;

  factory _WindDailyModel.fromJson(Map<String, dynamic> json) =
      _$WindDailyModelImpl.fromJson;

  @override
  double get speed;
  @override
  int get deg;
  @override
  double get gust;
  @override
  @JsonKey(ignore: true)
  _$$WindDailyModelImplCopyWith<_$WindDailyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SysDailyModel _$SysDailyModelFromJson(Map<String, dynamic> json) {
  return _SysDailyModel.fromJson(json);
}

/// @nodoc
mixin _$SysDailyModel {
  int get type => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  int get sunrise => throw _privateConstructorUsedError;
  int get sunset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SysDailyModelCopyWith<SysDailyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SysDailyModelCopyWith<$Res> {
  factory $SysDailyModelCopyWith(
          SysDailyModel value, $Res Function(SysDailyModel) then) =
      _$SysDailyModelCopyWithImpl<$Res, SysDailyModel>;
  @useResult
  $Res call({int type, int id, String country, int sunrise, int sunset});
}

/// @nodoc
class _$SysDailyModelCopyWithImpl<$Res, $Val extends SysDailyModel>
    implements $SysDailyModelCopyWith<$Res> {
  _$SysDailyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? country = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SysDailyModelImplCopyWith<$Res>
    implements $SysDailyModelCopyWith<$Res> {
  factory _$$SysDailyModelImplCopyWith(
          _$SysDailyModelImpl value, $Res Function(_$SysDailyModelImpl) then) =
      __$$SysDailyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int type, int id, String country, int sunrise, int sunset});
}

/// @nodoc
class __$$SysDailyModelImplCopyWithImpl<$Res>
    extends _$SysDailyModelCopyWithImpl<$Res, _$SysDailyModelImpl>
    implements _$$SysDailyModelImplCopyWith<$Res> {
  __$$SysDailyModelImplCopyWithImpl(
      _$SysDailyModelImpl _value, $Res Function(_$SysDailyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? country = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_$SysDailyModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SysDailyModelImpl implements _SysDailyModel {
  _$SysDailyModelImpl(
      {required this.type,
      required this.id,
      required this.country,
      required this.sunrise,
      required this.sunset});

  factory _$SysDailyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SysDailyModelImplFromJson(json);

  @override
  final int type;
  @override
  final int id;
  @override
  final String country;
  @override
  final int sunrise;
  @override
  final int sunset;

  @override
  String toString() {
    return 'SysDailyModel(type: $type, id: $id, country: $country, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SysDailyModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, id, country, sunrise, sunset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SysDailyModelImplCopyWith<_$SysDailyModelImpl> get copyWith =>
      __$$SysDailyModelImplCopyWithImpl<_$SysDailyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SysDailyModelImplToJson(
      this,
    );
  }
}

abstract class _SysDailyModel implements SysDailyModel {
  factory _SysDailyModel(
      {required final int type,
      required final int id,
      required final String country,
      required final int sunrise,
      required final int sunset}) = _$SysDailyModelImpl;

  factory _SysDailyModel.fromJson(Map<String, dynamic> json) =
      _$SysDailyModelImpl.fromJson;

  @override
  int get type;
  @override
  int get id;
  @override
  String get country;
  @override
  int get sunrise;
  @override
  int get sunset;
  @override
  @JsonKey(ignore: true)
  _$$SysDailyModelImplCopyWith<_$SysDailyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

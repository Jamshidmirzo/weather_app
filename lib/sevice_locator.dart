import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/core/config/dio_config.dart';
import 'package:weather_app/core/config/local_config.dart';
import 'package:weather_app/core/platform/geolocator_info.dart';
import 'package:weather_app/features/home/data/datasources/local_data_sources.dart';
import 'package:weather_app/features/home/data/datasources/remote_data_source.dart';
import 'package:weather_app/features/home/data/repositories/weather_repositories.dart';
import 'package:weather_app/features/home/domain/usecases/get_current_weather_by_name_usecase.dart';
import 'package:weather_app/features/home/domain/usecases/get_current_weather_usecase.dart';
import 'package:weather_app/features/home/domain/usecases/get_forecast_weather_usecase.dart';
import 'package:weather_app/features/home/presentation/blocs/bloc/weather_bloc.dart';

final sl = GetIt.instance;

Future init() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  final client = DioConfig().client;

  sl.registerFactory(() => WeatherBloc(
      sl<GetCurrentWeatherByNameUsecase>(),
      sl<GetCurrentWeatherUsecase>(),
      sl<GetForecastWeatherUsecase>(),
      sl<GeolocatorInfoImpl>()));

  sl.registerFactory(() => GeolocatorInfoImpl());
  sl.registerFactory(() => GetCurrentWeatherByNameUsecase(
      weatherRepositoriesImpl: sl<WeatherRepositoriesImpl>()));
  sl.registerFactory(() => GetCurrentWeatherUsecase(
      weatherRepositoriesImpl: sl<WeatherRepositoriesImpl>()));
  sl.registerFactory(() => GetForecastWeatherUsecase(
      weatherRepositoriesImpl: sl<WeatherRepositoriesImpl>()));
  sl.registerFactory(() => WeatherRepositoriesImpl(
      remoteDataSource: sl<RemoteDataSourceImpl>(),
      internetConnectionChecker: InternetConnectionChecker(),
      localDataSources: sl<LocalDataSourcesImpl>()));
  sl.registerFactory(() => RemoteDataSourceImpl(dio: client));
  sl.registerFactory(
      () => LocalDataSourcesImpl(localConfig: sl<LocalConfig>()));
  sl.registerSingleton<LocalConfig>(
    LocalConfig(sharedPreferences: sharedPreferences),
  );
}

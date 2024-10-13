import 'package:flutter/material.dart';
import 'package:weather_app/features/home/presentation/blocs/bloc/weather_bloc.dart';
import 'package:weather_app/features/home/presentation/pages/home_screen.dart';
import 'package:weather_app/features/settings/presentation/blocs/cubit/theme_cubit.dart';
import 'package:weather_app/sevice_locator.dart';
import 'sevice_locator.dart' as di;
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final _themeCubit = ThemeCubit();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              sl<WeatherBloc>()..add(WeatherEvent.getallWeather()),
        ),
        BlocProvider.value(
          value: _themeCubit,
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, themeMode) {
          return MaterialApp(
            theme: themeMode,
            debugShowCheckedModeBanner: false,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }

  @override
  void didChangePlatformBrightness() {
    print('changeeedd');
    super.didChangePlatformBrightness();
    Brightness brigtness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    context.read<ThemeCubit>().changeTheme(brigtness);
  }
}

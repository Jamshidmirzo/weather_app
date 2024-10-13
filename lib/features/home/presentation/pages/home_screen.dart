import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/constants/app_constants.dart';
import 'package:weather_app/core/constants/app_dimens.dart';
import 'package:weather_app/core/extensions/sizedbox_extension.dart';
import 'package:weather_app/core/widgets/error_widget.dart';
import 'package:weather_app/core/widgets/loading_widget.dart';
import 'package:weather_app/features/home/presentation/blocs/bloc/weather_bloc.dart';
import 'package:weather_app/features/home/presentation/widgets/appbar_widget.dart';
import 'package:weather_app/features/home/presentation/widgets/current_widget.dart';
import 'package:weather_app/features/home/presentation/widgets/forecast_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(),
      body: Container(
        padding: const EdgeInsets.all(
          AppDimens.PADDING_20,
        ),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: AppConstants.ColorsOfBg,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: BlocBuilder<WeatherBloc, WeatherState>(
                builder: (context, state) {
                  if (state.status == Status.Error) {
                    return ErrorWidgetWeather(message: state.message);
                  }
                  if (state.status == Status.Loading) {
                    return const LoadingWidget();
                  }
                  if (state.status == Status.Success) {
                    final weather = state.currentWeather;

                    return weather == null
                        ? const Center(
                            child: Text("Get Smth wrong"),
                          )
                        : CurrentWidget(weather: weather);
                  }
                  return Container();
                },
              ),
            ),
            const Text(
              'Get Weather by 3 hours interval',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            10.hw(),
            Expanded(
              child: BlocBuilder<WeatherBloc, WeatherState>(
                builder: (context, state) {
                  if (state.status == Status.Error) {
                    return ErrorWidgetWeather(message: state.message);
                  }
                  if (state.status == Status.Loading) {
                    return const LoadingWidget();
                  }
                  if (state.status == Status.Success) {
                    final weatherForecast = state.forecastWeather;
                    return weatherForecast == null
                        ? const Center(
                            child: Text("Get smth worng"),
                          )
                        : ForecastWidget(weatherForecast: weatherForecast);
                  }
                  return Container();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

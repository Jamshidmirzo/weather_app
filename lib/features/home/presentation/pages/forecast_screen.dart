import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/constants/app_constants.dart';
import 'package:weather_app/core/widgets/error_widget.dart';
import 'package:weather_app/core/widgets/loading_widget.dart';
import 'package:weather_app/features/home/presentation/blocs/bloc/weather_bloc.dart';
import 'package:weather_app/features/home/presentation/widgets/forecast_about_widget.dart';

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Next week"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: AppConstants.ColorsOfBg,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
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
                if (weatherForecast == null) {
                  return const Center(
                    child: Text("Something went wrong"),
                  );
                }

                return ForecastAboutWidget(weatherForecast: weatherForecast);
              }
              return Container();
            },
          ),
        ));
  }
}

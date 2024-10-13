// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:svg_flutter/svg.dart';
import 'package:weather_app/core/constants/app_dimens.dart';
import 'package:weather_app/core/extensions/sizedbox_extension.dart';

import 'package:weather_app/features/home/domain/entity/forecast_weather_entity.dart';

class ForecastAboutWidget extends StatelessWidget {
  final List<ForecastWeatherEntity> weatherForecast;
  const ForecastAboutWidget({
    super.key,
    required this.weatherForecast,
  });

  @override
  Widget build(BuildContext context) {
    final dailyForecasts = _getDailyForecasts(weatherForecast);

    return ListView.builder(
        itemCount: dailyForecasts.length,
        itemBuilder: (context, index) {
          final weather = dailyForecasts[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: AppDimens.PADDING_10, horizontal: AppDimens.PADDING_20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    DateFormat('EEEE').format(DateTime.parse(weather.dt_txt)),
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ),
                SvgPicture.asset(
                  'assets/svg/${weather.weather.first.icon}.svg',
                  width: 40,
                  height: 40,
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '${weather.main.temp.floor()}°C',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                     4.hw(),
                      Text(
                        weather.weather.first.description,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  List<ForecastWeatherEntity> _getDailyForecasts(
      List<ForecastWeatherEntity> forecastList) {
    Map<String, ForecastWeatherEntity> dailyMap = {};

    for (var forecast in forecastList) {
      final date = DateTime.parse(forecast.dt_txt);
      final dayKey = DateFormat('yyyy-MM-dd').format(date);
      if (!dailyMap.containsKey(dayKey)) {
        dailyMap[dayKey] = forecast;
      }
    }

    return dailyMap.values.toList();
  }
}

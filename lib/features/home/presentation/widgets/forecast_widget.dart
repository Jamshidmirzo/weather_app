import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:weather_app/core/constants/app_dimens.dart';
import 'package:weather_app/core/extensions/sizedbox_extension.dart';
import 'package:weather_app/features/home/domain/entity/forecast_weather_entity.dart';

class ForecastWidget extends StatelessWidget {
  final List<ForecastWeatherEntity> weatherForecast;
  const ForecastWidget({super.key, required this.weatherForecast});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => 20.ww(),
      scrollDirection: Axis.horizontal,
      itemCount: 9,
      itemBuilder: (context, index) {
        final weather = weatherForecast[index];
        return Container(
          padding: const EdgeInsets.all(AppDimens.PADDING_20),
          width: MediaQuery.of(context).size.width * 0.17,
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(AppDimens.BORDER_RADIUS_20),
            border: Border.all(color: Colors.black),
          ),
          child: Column(
            children: [
              Text(
                '${DateTime.parse(weather.dt_txt).hour} : ${DateTime.parse(weather.dt_txt).minute}0',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white),
              ),
              10.hw(),
              SvgPicture.asset(
                  width: 40,
                  height: 40,
                  'assets/svg/${weather.weather.first.icon}.svg'),
              10.hw(),
              Text(
                weather.main.temp.floor().toString(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ],
          ),
        );
      },
    );
  }
}

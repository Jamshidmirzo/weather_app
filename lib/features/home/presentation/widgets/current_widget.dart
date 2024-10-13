import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:svg_flutter/svg.dart';
import 'package:weather_app/core/constants/app_dimens.dart';
import 'package:weather_app/core/extensions/sizedbox_extension.dart';
import 'package:weather_app/features/home/domain/entity/current_weather_entity.dart';
import 'package:weather_app/features/home/presentation/widgets/about_widget.dart';

class CurrentWidget extends StatelessWidget {
  final CurrentWeatherEntity weather;
  const CurrentWidget({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${weather.sys.country}qwertyhtrewq',
          style: GoogleFonts.ptSerif(
            fontWeight: FontWeight.w500,
            fontSize: 41,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              size: 40,
              Icons.location_on_outlined,
              color: Colors.red,
            ),
            Text(
              weather.name,
              style: GoogleFonts.ptSerif(
                fontWeight: FontWeight.w500,
                fontSize: 41,
              ),
            ),
          ],
        ),
        20.hw(),
        Container(
          padding: const EdgeInsets.all(AppDimens.PADDING_20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimens.BORDER_RADIUS_20),
            color: Colors.black.withOpacity(0.5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    width: 150,
                    height: 150,
                    'assets/svg/${weather.weather.first.icon}.svg',
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            weather.main.temp.floorToDouble().toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 53,
                                color: Colors.white),
                          ),
                          const Text(
                            '℃',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Text(
                weather.weather.first.main,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                DateFormat(
                  'EEEE dd MMMM',
                ).format(DateTime.now()),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        20.hw(),
        Row(
          children: [
            AboutWidget(
                firstText: 'Real Feel',
                secondText: weather.main.feels_like.floorToDouble().toString()),
            20.ww(),
            AboutWidget(
                firstText: 'humidity', secondText: '${weather.main.humidity} %')
          ],
        ),
      ],
    );
  }
}

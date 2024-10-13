import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_dimens.dart';

class AboutWidget extends StatelessWidget {
  final String firstText;
  final String secondText;

  const AboutWidget(
      {super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.all(AppDimens.PADDING_10),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimens.BORDER_RADIUS_20),
          color: Colors.black.withOpacity(0.5),
        ),
        child: Column(
          children: [
            Text(
              firstText,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
            Text(
              secondText,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

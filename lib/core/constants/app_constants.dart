// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class AppConstants {
  static const String api = '328669704044b75af29dc6b4ddbad581';
  static const String baseUrl = 'https://api.openweathermap.org/data/2.5/';
  static List<Color> ColorsOfBg = [Colors.white, Colors.blue.shade200];
  static const sharedToCurrent = 'Current';
  static const sharedToForecast = 'Forecast';
  static  ThemeData lightMode = ThemeData.dark();
  static  ThemeData darkMode = ThemeData.dark();

}

enum Status { Loading, Success, Error, Initial }

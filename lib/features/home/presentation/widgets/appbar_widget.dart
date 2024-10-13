import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/home/presentation/blocs/bloc/weather_bloc.dart';
import 'package:weather_app/features/home/presentation/pages/forecast_screen.dart';
import 'package:weather_app/features/home/presentation/pages/search_screen.dart';
import 'package:weather_app/features/settings/presentation/pages/settings_screen.dart';

class AppbarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppbarWidget({super.key});

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppbarWidgetState extends State<AppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          context.read<WeatherBloc>().add(WeatherEvent.doInitlaState());
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return SearchScreen();
            },
          ));
        },
        icon: const Icon(
          Icons.search,
          size: 35,
          weight: 60,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const SettingsScreen();
                },
              ),
            );
          },
          icon: const Icon(
            CupertinoIcons.settings,
          ),
        ),
        IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ForecastScreen();
                },
              ));
            },
            icon: const Icon(
              Icons.menu_outlined,
              size: 35,
            ))
      ],
    );
  }
}

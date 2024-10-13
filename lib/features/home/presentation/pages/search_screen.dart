import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:svg_flutter/svg.dart';
import 'package:weather_app/core/constants/app_constants.dart';
import 'package:weather_app/core/constants/app_dimens.dart';
import 'package:weather_app/core/widgets/error_widget.dart';
import 'package:weather_app/core/widgets/loading_widget.dart';
import 'package:weather_app/features/home/presentation/blocs/bloc/weather_bloc.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
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
              end: Alignment.bottomCenter),
        ),
        child: Column(
          children: [
            Expanded(
              child: TextFormField(
                controller: textController,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      search(context);
                    },
                    icon: const Icon(Icons.search),
                  ),
                  labelText: 'Search City...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Expanded(
              child: BlocBuilder<WeatherBloc, WeatherState>(
                builder: (context, state) {
                  print(state);
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
                            child: Text("Came error"),
                          )
                        : ListView.builder(
                            itemBuilder: (context, index) {
                              return Container(
                                padding:
                                    const EdgeInsets.all(AppDimens.PADDING_20),
                                width: double.infinity,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black.withOpacity(0.5),
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        width: 50,
                                        height: 50,
                                        'assets/svg/${weather.weather.first.icon}.svg'),
                                    Text(weather.main.temp.toString()),
                                  ],
                                ),
                              );
                            },
                          );
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

  search(BuildContext context) {
    context
        .read<WeatherBloc>()
        .add(WeatherEvent.getWeatherByName(textController.text));
  }
}


// Expanded(
            //   child: BlocBuilder<WeatherBloc, WeatherState>(
            //     builder: (context, state) {
            //       if (state.status == Status.Error) {
            //         return ErrorWidgetWeather(message: state.message);
            //       }
            //       if (state.status == Status.Loading) {
            //         return const LoadingWidget();
            //       }
            //       if (state.status == Status.Success) {
            //         final weather = state.currentWeather;

            //         return weather == null
            //             ? const Center(
            //                 child: Text("Get Smth wrong"),
            //               )
            //             : Column(
            //                 children: [
            //                   Text(
            //                     '${weather.sys.country}qwertyhtrewq',
            //                     style: GoogleFonts.ptSerif(
            //                       fontWeight: FontWeight.w500,
            //                       fontSize: 41,
            //                     ),
            //                   ),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       const Icon(
            //                         size: 40,
            //                         Icons.location_on_outlined,
            //                         color: Colors.red,
            //                       ),
            //                       Text(
            //                         weather.name,
            //                         style: GoogleFonts.ptSerif(
            //                           fontWeight: FontWeight.w500,
            //                           fontSize: 41,
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                   20.hw(),
            //                   Container(
            //                     padding: const EdgeInsets.all(20),
            //                     width: MediaQuery.of(context).size.width,
            //                     height:
            //                         MediaQuery.of(context).size.height * 0.3,
            //                     decoration: BoxDecoration(
            //                       borderRadius: BorderRadius.circular(20),
            //                       color: Colors.black.withOpacity(0.5),
            //                     ),
            //                     child: Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Row(
            //                           mainAxisAlignment:
            //                               MainAxisAlignment.spaceBetween,
            //                           children: [
            //                             SvgPicture.asset(
            //                               width: 150,
            //                               height: 150,
            //                               'assets/svg/${weather.weather.first.icon}.svg',
            //                             ),
            //                             Column(
            //                               crossAxisAlignment:
            //                                   CrossAxisAlignment.start,
            //                               children: [
            //                                 Row(
            //                                   children: [
            //                                     Text(
            //                                       weather.main.temp
            //                                           .floorToDouble()
            //                                           .toString(),
            //                                       style: const TextStyle(
            //                                           fontWeight:
            //                                               FontWeight.bold,
            //                                           fontSize: 53,
            //                                           color: Colors.white),
            //                                     ),
            //                                     const Text(
            //                                       '℃',
            //                                       style: TextStyle(
            //                                           fontWeight:
            //                                               FontWeight.bold,
            //                                           fontSize: 40,
            //                                           color: Colors.white),
            //                                     ),
            //                                   ],
            //                                 ),
            //                               ],
            //                             )
            //                           ],
            //                         ),
            //                         Text(
            //                           weather.weather.first.main,
            //                           style: const TextStyle(
            //                             fontWeight: FontWeight.bold,
            //                             fontSize: 30,
            //                             color: Colors.white,
            //                           ),
            //                         ),
            //                         Text(
            //                           DateFormat(
            //                             'EEEE dd MMMM',
            //                           ).format(DateTime.now()),
            //                           style: const TextStyle(
            //                             fontWeight: FontWeight.bold,
            //                             fontSize: 20,
            //                             color: Colors.white,
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                   20.hw(),
            //                   Row(
            //                     children: [
            //                       AboutWidget(
            //                           firstText: 'Real Feel',
            //                           secondText: weather.main.feels_like
            //                               .floorToDouble()
            //                               .toString()),
            //                       20.ww(),
            //                       AboutWidget(
            //                           firstText: 'humidity',
            //                           secondText: '${weather.main.humidity} %')
            //                     ],
            //                   ),
            //                 ],
            //               );
            //       }
            //       return Container();
            //     },
            //   ),
            // )
         
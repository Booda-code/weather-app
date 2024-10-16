import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/weather_view.dart';
import 'package:weather_app/widgets/get_theme_color.dart';


void main() {
  runApp(const weatherApp());
}

class weatherApp extends StatelessWidget {
  const weatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) =>
            BlocBuilder<GetWeatherCubit, GetWeatherStates>(
              builder: (context, state) {
                return MaterialApp(
                  theme: ThemeData(
                    primaryColor: getThemeColour(
                        BlocProvider
                            .of<GetWeatherCubit>(context)
                            .weatherModel
                            ?.weatherCondition
                    ),
                  ),
                  debugShowCheckedModeBanner: false,
                  home: WeatherView(),
                );
              },
            ),
      ),

    );
  }


}



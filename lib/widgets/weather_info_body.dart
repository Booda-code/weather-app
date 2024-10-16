import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/models/weather_model.dart';

import 'custom_weather_condation_text.dart';

class WeatherInfoBody extends StatelessWidget {
    WeatherInfoBody({super.key});
  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel = BlocProvider.of <GetWeatherCubit> (context).weatherModel!;
    return Container(
      height: double.infinity,
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Theme.of(context).primaryColor, Colors.white],
        ),
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const CustomWeatherCondationText(),
          const SizedBox(height: 20,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network('http:${weatherModel.image.toString()}'),
              Text(
                ' ${weatherModel.temp.ceil()}',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Text('Max Temp: ${weatherModel.maxTemp.ceil()}') ,
                  Text('Min Temp${weatherModel.minTemp.ceil()}')
                ],
              )
            ],
          ),
          const SizedBox(height: 20,)
          , Text(
            weatherModel.weatherCondition,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ), // your body content.
    );
  }
}




import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/failure_weather_body.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(color: Colors.white,
            onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const SearchView() ,));
            },
           icon: Icon(Icons.search),)
        ],
        title: Text('Weather App',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),
      body: BlocBuilder <GetWeatherCubit,GetWeatherStates> (
        builder: (context, state) {
          if(state is WeatherStatesLoaded){
            return WeatherInfoBody();

          }
          else if(state is WeatherInitialState){
            return NoWeatherBody();
          }
          else {
            return FailureWeatherBody();
          }
        } ,
      ),
    );
  }
}

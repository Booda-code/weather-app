import 'package:weather_app/models/weather_model.dart';

class GetWeatherStates{}

class WeatherInitialState extends GetWeatherStates {}

class WeatherStatesLoaded extends GetWeatherStates {}

class WeatherFailureStates extends GetWeatherStates {
  final String errMessage;

  WeatherFailureStates( this.errMessage);
}

import 'package:weather_app/data/models/current_model.dart';

class WeatherState {}

class WeatherLoadedState extends WeatherState {
  final TodayWeatherModel todayWeatherModel;

  WeatherLoadedState({required this.todayWeatherModel});
}

class InitialState extends WeatherState {}

class WeatherFailureState extends WeatherState {}

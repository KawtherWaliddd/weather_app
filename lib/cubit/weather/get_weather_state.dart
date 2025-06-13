import 'package:weather_app/data/models/current_model.dart';

abstract class WeatherState {}

class InitialState extends WeatherState {}

class WeatherLoadingState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final TodayWeatherModel todayWeatherModel;
  WeatherLoadedState({required this.todayWeatherModel});
}

class WeatherFailureState extends WeatherState {}

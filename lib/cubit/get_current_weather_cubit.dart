import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_current_weather/get_weather_state.dart';
import 'package:weather_app/data/models/current_model.dart';
import 'package:weather_app/data/services/weather_services.dart';

class GetCurrentWeatherCubit extends Cubit<WeatherState> {
  GetCurrentWeatherCubit() : super(InitialState());

  getCurrentWeather(String cityName) async {
    try {
      TodayWeatherModel todayWeatherModel = await WeatherServices(
        Dio(),
      ).getTodayWeather(cityName);
      print(todayWeatherModel);
      emit(WeatherLoadedState(todayWeatherModel: todayWeatherModel));
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/data/services/weather_services.dart';
import 'package:weather_app/cubit/weather/get_weather_state.dart';

class GetCurrentWeatherCubit extends Cubit<WeatherState> {
  final WeatherServices weatherServices;

  GetCurrentWeatherCubit(this.weatherServices) : super(InitialState());

  getCurrentWeather(String cityName) async {
    emit(WeatherLoadingState());
    try {
      final todayWeather = await weatherServices.getTodayWeather(cityName);
      emit(WeatherLoadedState(todayWeatherModel: todayWeather));
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}

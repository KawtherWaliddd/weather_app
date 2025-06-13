import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_current_weather_cubit.dart';
import 'package:weather_app/data/services/weather_services.dart';
import 'package:weather_app/weather_app.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => GetCurrentWeatherCubit(WeatherServices(Dio())),
      child: const WeatherApp(),
    ),
  );
}

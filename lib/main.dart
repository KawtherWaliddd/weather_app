import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/theme/change_theme.dart';
import 'package:weather_app/cubit/weather/get_current_weather_cubit.dart';
import 'package:weather_app/data/services/weather_services.dart';
import 'package:weather_app/weather_app.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => GetCurrentWeatherCubit(WeatherServices(Dio())),
        ),
        BlocProvider(create: (_) => ThemeCubit()),
      ],
      child: const WeatherApp(),
    ),
  );
}

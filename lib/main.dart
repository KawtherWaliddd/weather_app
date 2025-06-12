import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/data/services/weather_services.dart';
import 'package:weather_app/weather_app.dart';

void main() {
  runApp(const WeatherApp());
  WeatherServices(Dio()).getTodayWeather('egypt');
}

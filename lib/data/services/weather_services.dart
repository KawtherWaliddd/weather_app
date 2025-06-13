import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:weather_app/data/models/current_model.dart';
import 'package:weather_app/data/services/endpoint.dart';

class WeatherServices {
  final Dio dio;

  WeatherServices(this.dio);

  Future<TodayWeatherModel> getTodayWeather(String cityName) async {
    final url =
        '${Endpoint.baseUrl}${Endpoint.forecastEndpoint}?key=${Endpoint.apiKey}&q=$cityName&days=1';

    try {
      log("Fetching from: $url");
      final response = await dio.get(url);
      return TodayWeatherModel.fromJson(response.data);
    } catch (e) {
      log('Weather API error: $e');
      rethrow;
    }
  }
}

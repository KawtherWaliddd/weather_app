import 'package:dio/dio.dart';
import 'package:weather_app/data/models/current_model.dart';
import 'package:weather_app/data/services/endpoint.dart';

class WeatherServices {
  final Dio dio;

  WeatherServices(this.dio);

  Future<TodayWeatherModel> getTodayWeather(String cityName) async {
    try {
      final String requestUrl =
          '${Endpoint.baseUrl}${Endpoint.forecastEndpoint}?key=${Endpoint.apiKey}&q=$cityName&days=1';

      print("API Request URL: $requestUrl");

      Response response = await dio.get(requestUrl);
      Map<String, dynamic> jsonData = response.data;

      print("API Response: $jsonData");

      return TodayWeatherModel.fromJson(jsonData);
    } catch (e) {
      print("API Error: $e");
      throw Exception("Failed to load weather data: $e");
    }
  }
}

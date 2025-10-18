class TodayWeatherModel {
  final String cityName;
  final String lastUpdated;
  final double currentTemp;
  final double maxTemp;
  final double minTemp;
  final String condition;
  final String icon;

  TodayWeatherModel({
    required this.cityName,
    required this.lastUpdated,
    required this.currentTemp,
    required this.maxTemp,
    required this.minTemp,
    required this.condition,
    required this.icon,
  });

  factory TodayWeatherModel.fromJson(Map<String, dynamic> json) {
    return TodayWeatherModel(
      cityName: json['location']['name'] ?? '',
      lastUpdated: json['current']['last_updated'] ?? '',
      currentTemp: (json['current']['temp_c'] as num?)?.toDouble() ?? 0.0,
      maxTemp:
          (json['forecast']['forecastday'][0]['day']['maxtemp_c'] as num?)
              ?.toDouble() ??
          0.0,
      minTemp:
          (json['forecast']['forecastday'][0]['day']['mintemp_c'] as num?)
              ?.toDouble() ??
          0.0,
      condition: json['current']['condition']['text'] ?? '',
      icon: json['current']['condition']['icon'] ?? '',
    );
  }
}

import 'package:flutter/material.dart';
import 'package:weather_app/data/models/current_model.dart';
import 'package:weather_app/resources/app_text_style.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key, required this.todayWeatherModel});
  final TodayWeatherModel todayWeatherModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('london', style: AppTextStyle.textStyleBold),
          Row(children: []),
        ],
      ),
    );
  }
}

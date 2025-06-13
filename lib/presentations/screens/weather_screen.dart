import 'package:flutter/material.dart';
import 'package:weather_app/data/models/current_model.dart';
import 'package:weather_app/resources/app_text_style.dart';
import 'package:weather_app/resources/colors_manager.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key, required this.todayWeatherModel});

  final TodayWeatherModel todayWeatherModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: ColorsManager.cyanColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                todayWeatherModel.cityName,
                style: AppTextStyle.textStyleBold.copyWith(fontSize: 28),
              ),
              Image.network("https:${todayWeatherModel.icon}", width: 80),
              Text(
                todayWeatherModel.condition,
                style: AppTextStyle.textStyleBold.copyWith(fontSize: 22),
              ),
              Text(
                '${todayWeatherModel.currentTemp}°C',
                style: AppTextStyle.textStyleBold.copyWith(fontSize: 48),
              ),
              Text(
                'Max: ${todayWeatherModel.maxTemp}°C / Min: ${todayWeatherModel.minTemp}°C',
                style: AppTextStyle.textStyleRegular,
              ),
              Text(
                'Last Updated: ${todayWeatherModel.lastUpdated}',
                style: AppTextStyle.textStyleRegular.copyWith(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

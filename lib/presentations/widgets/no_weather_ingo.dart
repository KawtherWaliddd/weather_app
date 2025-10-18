import 'package:flutter/material.dart';
import 'package:weather_app/resources/app_text_style.dart';

class NoWeatherInfo extends StatelessWidget {
  const NoWeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Text(
          'Welcome! \n Enter a city name to get real-time weather updates 😊',
          style: AppTextStyle.textStyleRegular,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

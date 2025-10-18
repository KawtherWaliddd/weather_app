import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/weather/get_current_weather_cubit.dart';
import 'package:weather_app/resources/app_text_style.dart';
import 'package:weather_app/resources/colors_manager.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.cyanColor,
        title: Text('Weather App', style: AppTextStyle.textStyleBold),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              var getCurrentWeatherCubit =
                  BlocProvider.of<GetCurrentWeatherCubit>(context);
              getCurrentWeatherCubit.getCurrentWeather(value);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              labelText: 'Search',
              labelStyle: TextStyle(color: ColorsManager.cyanColor),
              suffix: Icon(Icons.search, color: ColorsManager.cyanColor),
              hintText: 'Inter City Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorsManager.blackColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorsManager.cyanColor),
              ),
            ),
            cursorColor: ColorsManager.blackColor,
          ),
        ),
      ),
    );
  }
}

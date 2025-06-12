import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_current_weather/get_weather_state.dart';
import 'package:weather_app/cubit/get_current_weather_cubit.dart';
import 'package:weather_app/resources/app_text_style.dart';
import 'package:weather_app/resources/colors_manager.dart';
import 'package:weather_app/presentations/screens/search_screen.dart';
import 'package:weather_app/presentations/screens/weather_screen.dart';
import 'package:weather_app/presentations/widgets/no_weather_ingo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.cyanColor,
        title: Text('Weather App', style: AppTextStyle.textStyleBold),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SearchScreen();
                  },
                ),
              );
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: BlocBuilder<GetCurrentWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is InitialState) {
            return NoWeatherInfo();
          } else if (state is WeatherLoadedState) {
            return WeatherScreen(todayWeatherModel: state.todayWeatherModel);
          } else {
            return Center(child: Text("There an error"));
          }
        },
      ),
    );
  }
}

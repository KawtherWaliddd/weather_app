import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/theme/change_theme.dart';
import 'package:weather_app/cubit/weather/get_current_weather_cubit.dart';
import 'package:weather_app/cubit/weather/get_weather_state.dart';
import 'package:weather_app/presentations/widgets/search_builder.dart';
import 'package:weather_app/resources/app_text_style.dart';
import 'package:weather_app/resources/colors_manager.dart';
import 'package:weather_app/presentations/screens/weather_screen.dart';
import 'package:weather_app/presentations/widgets/no_weather_ingo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.cyanColor,
        title: Text('Welcome Weather App', style: AppTextStyle.textStyleBold),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => SearchBuilder()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.dark_mode),
            onPressed: () {
              context.read<ThemeCubit>().toggleTheme();
            },
          ),
        ],
      ),
      body: BlocBuilder<GetCurrentWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is InitialState) {
            return const NoWeatherInfo();
          } else if (state is WeatherLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is WeatherLoadedState) {
            return WeatherScreen(todayWeatherModel: state.todayWeatherModel);
          } else {
            return Center(
              child: Text(
                'There was an error 😢',
                style: AppTextStyle.textStyleRegular,
              ),
            );
          }
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:weather_app/resources/app_text_style.dart';
import 'package:weather_app/resources/colors_manager.dart';
import 'package:weather_app/presentations/widgets/search_body.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.cyanColor,
        title: Text('Search City', style: AppTextStyle.textStyleBold),
      ),
      body: SearchBody(),
    );
  }
}

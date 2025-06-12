import 'package:flutter/material.dart';
import 'package:weather_app/resources/colors_manager.dart';

class AppTextStyle {
  AppTextStyle._();
  static TextStyle textStyleBold = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: ColorsManager.whiteColor,
  );

  static TextStyle textStyleRegular = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: ColorsManager.blackColor,
  );
}

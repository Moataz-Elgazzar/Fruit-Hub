import 'package:flutter/material.dart';
import 'package:fruit_hub/core/constants/app_fonts.dart';
import 'package:fruit_hub/core/utils/color/colors.dart';

class TextStyles {


  static TextStyle titleStyle({
    Color? color,
    double fontSize = 18,
    FontWeight fontWeight = FontWeight.bold,
  }){
    return TextStyle(
      color: color ?? AppColors.darkColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }


  static TextStyle subtitleStyle({
    Color? color,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
  }){
    return TextStyle(
      color: color ?? AppColors.darkColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }


  static TextStyle smallStyle({
    Color? color,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    String fontFamily = AppFonts.brandonGrotesque,
  }){
    return TextStyle(
      color: color ?? AppColors.subTitleColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    );
  }
}
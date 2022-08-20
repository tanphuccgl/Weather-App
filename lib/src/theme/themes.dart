import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/src/constants/fonts.dart';
import 'package:weather_app/src/theme/styles.dart';

class XTheme {
  static const String fontFamily = XFont.text;
  static const barOverlayStyle = SystemUiOverlayStyle.light;

  static ThemeData light() => ThemeData(textTheme: XStyle.textTheme);
  static ThemeData dark() => ThemeData.dark();
}

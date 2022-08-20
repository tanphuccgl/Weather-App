import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/src/constants/colors.dart';
import 'package:weather_app/src/constants/fonts.dart';
import 'package:weather_app/src/theme/text_style.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const AutoSizeText(
          "Montreal",
          style: XRegularStyle.largeTitle,
        ),
       const AutoSizeText("19°",
            style: TextStyle(
              fontFamily: XFont.display,
              fontSize: 96,
              fontWeight: FontWeight.w200,
              color: XColorLight.white,
            )),
        AutoSizeText(
          "Mostly Clear",
          style: XBoldStyle.title2
              .copyWith(color: XColorLight.brightGray.withOpacity(.6)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const [
            AutoSizeText(
              "H:24°",
              style: XBoldStyle.title2,
            ),
            AutoSizeText(
              "L:18°",
              style: XBoldStyle.title2,
            ),
          ],
        )
      ],
    );
  }
}

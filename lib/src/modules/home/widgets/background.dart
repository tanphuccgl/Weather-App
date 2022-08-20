import 'package:flutter/material.dart';
import 'package:weather_app/src/constants/images.dart';

class BackgroundView extends StatelessWidget {
  const BackgroundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            XImage.background,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 120,
          child: Image.asset(
            XImage.house,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

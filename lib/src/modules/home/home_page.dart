import 'package:flutter/material.dart';
import 'package:weather_app/src/constants/colors.dart';
import 'package:weather_app/src/constants/images.dart';
import 'package:weather_app/src/modules/home/widgets/background.dart';
import 'package:weather_app/src/modules/home/widgets/weather.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            const BackgroundView(),
            const Positioned.fill(
                top: 80,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: WeatherView(),
                )),
            Positioned.fill(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: XColorLight.white.withOpacity(0.3)),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          XImage.shadowBackground,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(44),
                      gradient: XGradient.linear1,
                    ),
                  )),
            ),
            Positioned(bottom: 0, child: Image.asset(XImage.bottomBar))
          ],
        ),
      ),
    );
  }
}

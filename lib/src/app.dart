import 'package:flutter/material.dart';
import 'package:weather_app/src/modules/home/home_page.dart';
import 'package:weather_app/src/router/page_route.dart';
import 'package:weather_app/src/theme/themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: XTheme.light(),
      debugShowCheckedModeBanner: false,
      darkTheme: XTheme.dark(),
      themeMode: ThemeMode.light,
      title: 'Weather App',
      restorationScopeId: 'Weather App',
      supportedLocales: const [
        Locale('en', ''),
      ],
      home: const HomePage(),
      routes: {
        PageRoutes.homePage: (context) => const HomePage(),
      },
    );
  }
}

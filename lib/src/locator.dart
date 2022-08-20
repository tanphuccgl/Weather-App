import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/src/theme/themes.dart';

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(XTheme.barOverlayStyle);
}

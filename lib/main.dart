// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/src/app.dart';
import 'package:weather_app/src/bloc_observer.dart';
import 'package:weather_app/src/locator.dart';

Future<void> main() async {
  await initializeApp();
  BlocOverrides.runZoned(() => runApp(const MyApp()),
      blocObserver: XBlocObserver());
}

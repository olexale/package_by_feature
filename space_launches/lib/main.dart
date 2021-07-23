import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:space_launches/di/injection.dart';
import 'package:space_launches/routes/router.gr.dart';

void main() {
  configureDI(environment: Environment.prod);
  runApp(SpaceLaunchesApp());
}

class SpaceLaunchesApp extends StatelessWidget {
  const SpaceLaunchesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          primaryColor: Color(0xFFD1B2F4),
          primaryColorBrightness: Brightness.dark,
          appBarTheme: Theme.of(context)
              .appBarTheme
              .copyWith(brightness: Brightness.dark),
        ),
        routerDelegate: getIt<SpaceLaunchesRouter>().delegate(),
        routeInformationParser:
            getIt<SpaceLaunchesRouter>().defaultRouteParser(),
      );
}

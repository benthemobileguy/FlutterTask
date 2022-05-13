import 'package:flutter/material.dart';
import 'package:flutter_task/app/data/bloc/index.dart';
import 'package:flutter_task/presentation/resources/routes-manager.dart';
import 'package:flutter_task/presentation/resources/theme-manager.dart';
import 'package:provider/provider.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); // private named constructor
  static final MyApp instance =
  MyApp._internal(); // single instance -- singleton

  factory MyApp() => instance; // factory for the class instance

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainBloc>(
      create: (context) => MainBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.onboardingRoute,
        theme: getApplicationTheme(),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_task/presentation/resources/strings-manager.dart';
import 'package:flutter_task/presentation/screens/home/home-screen.dart';
import 'package:flutter_task/presentation/screens/login-screen.dart';
import 'package:flutter_task/presentation/screens/onboarding-screen.dart';
import 'package:flutter_task/presentation/screens/signup-screen.dart';

class Routes {
  static const String homeRoute = "/homeRoute";
  static const String loginRoute = "/loginRoute";
  static const String onboardingRoute = "/onboardingRoute";
  static const String registerRoute = "/registerRoute";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.onboardingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return unDefinedRoute();
    }
  }
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: const Text(AppStrings.noRouteFound),
          ),
          body: Center(child: const Text(AppStrings.noRouteFound)),
        ));
  }

}
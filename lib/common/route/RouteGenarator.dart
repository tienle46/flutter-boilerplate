import 'package:boilerplate_flutter/feature/home/ui/HomePage.dart';
import 'package:boilerplate_flutter/feature/landing/LandingPage.dart';
import 'package:boilerplate_flutter/feature/signin_signup/resource/index.dart';
import 'package:boilerplate_flutter/feature/signin_signup/ui/SignInPage.dart';
import 'package:boilerplate_flutter/feature/signin_signup/ui/SignUpPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case Routes.landing:
        return MaterialPageRoute<dynamic>(builder: (_) => LandingPage());

      case Routes.signIn:
        if (args is AuthRepository) {
          return MaterialPageRoute<dynamic>(
              builder: (_) => SignInPage(authRepository: args));
        }

        return _errorRoute();

      case Routes.signUp:
        if (args is AuthRepository) {
          return MaterialPageRoute<dynamic>(
              builder: (_) => SignUpPage(authRepository: args));
        }

        return _errorRoute();

      case Routes.home:
        return MaterialPageRoute<dynamic>(
            builder: (_) => Scaffold(
                appBar: AppBar(
                  title: const Text('BlueBottle'),
                ),
                body: HomePage()));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute<dynamic>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
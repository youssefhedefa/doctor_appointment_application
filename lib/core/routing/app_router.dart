import 'package:doctor_appointment_application/features/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';

import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnboardingView(),
        );

      case RoutesName.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(),
        );


      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(),
        );
    }
  }
}

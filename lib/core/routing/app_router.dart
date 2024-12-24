import 'package:appointments_app/core/di/dependency_injection.dart';
import 'package:appointments_app/core/routing/routes.dart';
import 'package:appointments_app/features/login/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/ui/home_screen.dart';
import '../../features/login/ui/screens/login_screen.dart';
import '../../features/onboarding/ui/screens/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen :
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.loginScreen :
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: LoginScreen(),
            ));
      case Routes.homeScreen :
        return MaterialPageRoute(builder: (_) =>
            HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
                body: Center(
                  child: Text('no route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
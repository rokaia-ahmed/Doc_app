import 'package:appointments_app/core/di/dependency_injection.dart';
import 'package:appointments_app/core/routing/routes.dart';
import 'package:appointments_app/features/home/logic/home_cubit.dart';
import 'package:appointments_app/features/login/logic/login_cubit.dart';
import 'package:appointments_app/features/sign_up/logic/sign_up_cubit.dart';
import 'package:appointments_app/features/sign_up/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/ui/home_screen.dart';
import '../../features/login/ui/screens/login_screen.dart';
import '../../features/onboarding/ui/screens/onboarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
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
      case Routes.signUpScreen :
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) => getIt<SignupCubit>(),
              child: SignupScreen(),
            ));
      case Routes.homeScreen :
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) => HomeCubit(getIt())..getSpecialization(),
              child: HomeScreen(),
            ));
      default:
        return null;
    }
  }
}
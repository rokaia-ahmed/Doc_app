import 'package:appointments_app/core/routing/app_router.dart';
import 'package:appointments_app/core/routing/routes.dart';
import 'package:appointments_app/core/theming/colors.dart';
import 'package:appointments_app/features/home/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter ;
  const DocApp({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
     designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.homeScreen,
         onGenerateRoute:appRouter.generateRoute ,
      ),
    );
  }
}
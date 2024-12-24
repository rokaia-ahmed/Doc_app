import 'package:appointments_app/core/routing/app_router.dart';
import 'package:appointments_app/doc_app.dart';
import 'package:flutter/material.dart';

import 'core/di/dependency_injection.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter(),));
}




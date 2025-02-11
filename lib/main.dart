import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life/navigation/app_routes.dart';
import 'package:life/navigation/app_routes_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.home,
      debugShowCheckedModeBanner: false,
      getPages: AppRoutesManager.pages,
    );
  }
}

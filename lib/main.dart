import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life/common/app_colors.dart';
import 'package:life/navigation/app_routes.dart';
import 'package:life/navigation/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      getPages: AppPages.pages,
      defaultTransition: Transition.native,
      theme: ThemeData(
        splashColor: AppColors.transparent,
        highlightColor: AppColors.transparent,
        splashFactory: NoSplash.splashFactory,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColors.customGreen,
          selectionColor: AppColors.customGreen.withOpacity(0.2),
          selectionHandleColor: AppColors.customGreen,
        ),
      ),
    );
  }
}

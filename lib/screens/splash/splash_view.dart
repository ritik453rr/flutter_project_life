import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life/screens/splash/splash_controller.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final SplashController splashController = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
    );
  }
}

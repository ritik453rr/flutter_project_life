import 'package:get/get.dart';
import 'package:life/navigation/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigation();
  }

  void navigation() {
    Future.delayed(const Duration(seconds: 1), () {
      Get.toNamed(AppRoutes.home);
    });
  }
}

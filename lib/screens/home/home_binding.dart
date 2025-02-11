import 'package:get/get.dart';
import 'package:life/screens/home/home_controller.dart';

/// Binding for [HomeView].
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
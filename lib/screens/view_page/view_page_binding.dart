
import 'package:get/get.dart';
import 'package:life/screens/view_page/view_page_controller.dart';

class ViewPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewPageController>(() => ViewPageController());
  }
}
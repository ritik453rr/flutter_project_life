import 'package:get/get.dart';
import 'package:life/navigation/app_routes.dart';
import 'package:life/screens/home/home_binding.dart';
import 'package:life/screens/home/home_view.dart';

/// Manager for app routes.
class AppRoutesManager {
  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    )
  ];
}

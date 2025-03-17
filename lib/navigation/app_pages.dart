import 'package:get/get.dart';
import 'package:life/navigation/app_routes.dart';
import 'package:life/screens/add_note/add_note_binding.dart';
import 'package:life/screens/add_note/add_note_view.dart';
import 'package:life/screens/home/home_binding.dart';
import 'package:life/screens/home/home_view.dart';
import 'package:life/screens/splash/splash_binding.dart';
import 'package:life/screens/splash/splash_view.dart';
import 'package:life/screens/view_page/view_page.dart';

import '../screens/view_page/view_page_binding.dart';

/// Manager for app routes.
class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashView(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.addNote,
      page: () => const AddNoteView(),
      binding: AddNoteBinding(),
    ),
    GetPage(
      name: AppRoutes.viewPage,
      page: () => const ViewPage(),
      binding: ViewPageBinding(),
    ),
  ];
}

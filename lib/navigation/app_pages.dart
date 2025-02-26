import 'package:get/get.dart';
import 'package:life/common/note/note_binding.dart';
import 'package:life/navigation/app_routes.dart';
import 'package:life/screens/add_note/add_note_binding.dart';
import 'package:life/screens/add_note/add_note_view.dart';
import 'package:life/screens/home/home_binding.dart';
import 'package:life/screens/home/home_view.dart';
import 'package:life/screens/splash/splash_binding.dart';
import 'package:life/screens/splash/splash_view.dart';

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
      page: () => HomeView(),
      bindings: [HomeBinding(), NoteBinding()],
    ),
    GetPage(
      name: AppRoutes.addNote,
      page: () => AddNoteView(),
      binding: AddNoteBinding(),
    )
  ];
}

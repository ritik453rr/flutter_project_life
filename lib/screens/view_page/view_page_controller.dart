import 'package:get/get.dart';
import 'package:life/database/app_storage.dart';
import 'package:life/database/note_entity.dart';

class ViewPageController extends GetxController {
  late GoalEntity? goal;
  @override
  void onInit() {
    super.onInit();
    int id = Get.arguments;
    goal = AppStorage.findNoteById(id);
  }
}

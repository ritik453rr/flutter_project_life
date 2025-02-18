import 'package:get/get.dart';
import 'package:life/common/note/note_controller.dart';

class NoteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NoteController>(() => NoteController());
  }
}
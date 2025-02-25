import 'package:get/get.dart';
import 'package:life/screens/add_note/add_note_controller.dart';

class AddNoteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddNoteController>(() => AddNoteController());
  }
}
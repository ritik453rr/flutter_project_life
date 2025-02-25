import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life/common/note/note_controller.dart';

class AddNoteController extends GetxController{
  var titleController = TextEditingController();
  var contentController = TextEditingController();
  late NoteController noteController;

  @override
  void onInit() {
    super.onInit();
    noteController = Get.arguments as NoteController;
  }
}
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life/common/app_fonts.dart';
import 'package:life/common/common_ui.dart';
import 'package:life/common/note/note_controller.dart';
import 'package:life/database/note_entity.dart';

/// View for [HomeView].
class HomeView extends StatelessWidget {
  HomeView({super.key});
  
  final NoteController noteController = Get.find();

  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: Colors.blue,
      child: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 8, bottom: 40),
          child: SizedBox(
            height: 60,
            width: 60,
            child: FloatingActionButton(
              splashColor: Colors.transparent,
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              onPressed: () {},
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Obx(
          () => ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            itemCount: noteController.notes.length,
            itemBuilder: (context, index) {
              return ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  noteController.notes[index].title,
                  style: CommonUi.customTextStyle(),
                ),
                subtitle: Text(
                  noteController.notes[index].data,
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    noteController.deleteNote(noteController.notes[index]);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

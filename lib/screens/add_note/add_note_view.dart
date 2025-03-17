import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life/common/app_colors.dart';
import 'package:life/common/app_fonts.dart';
import 'package:life/common/custom_appbar.dart';
import 'package:life/common/custom_textfield.dart';
import 'package:life/database/app_storage.dart';
import 'package:life/database/note_entity.dart';
import 'package:life/global.dart';
import 'package:life/screens/add_note/add_note_controller.dart';

class AddNoteView extends GetView<AddNoteController> {
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: AppColors.customGreen,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          backgroundColor: AppColors.white,
          appBar: CustomAppBar(
            onTapTrailingText: () async {
              if (controller.titleController.text.isNotEmpty ||
                  controller.contentController.text.isNotEmpty) {
                final GoalEntity note = GoalEntity(
                  title: controller.titleController.text.isEmpty
                      ? 'No Title'
                      : controller.titleController.text,
                  data: controller.contentController.text.isEmpty
                      ? 'No text'
                      : controller.contentController.text,
                );
                await AppStorage.addGoal(note);
                Get.back();
              }
            },
          ),
          body: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Global.horizontalSpace),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomTextField(
                    controller: controller.titleController,
                    hintText: 'Title',
                    maxLength: 150,
                    maxLines: null,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    controller: controller.contentController,
                    maxLines: null,
                    hintText: 'Start typing...',
                    hintFontSize: 16,
                    hintFontFamily: AppFonts.semiBold,
                    fontSize: 16,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

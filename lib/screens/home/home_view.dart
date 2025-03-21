import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life/common/app_colors.dart';
import 'package:life/common/app_font_size.dart';
import 'package:life/common/app_fonts.dart';
import 'package:life/common/common_ui.dart';
import 'package:life/common/img_res.dart';
import 'package:life/database/app_storage.dart';
import 'package:life/database/note_entity.dart';
import 'package:life/global.dart';
import 'package:life/navigation/app_routes.dart';

/// HomeView is the main screen of the app where the user can see all the notes.
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: AppColors.customGreen,
      child: 
      Scaffold(
        backgroundColor: AppColors.white,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 8, bottom: 40),
          child: SizedBox(
            height: 60,
            width: 60,
            child: FloatingActionButton(
              splashColor: Colors.transparent,
              backgroundColor: AppColors.customGreen,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              onPressed: () {
                Get.toNamed(AppRoutes.addNote);
              },
              child: const Icon(
                ImgRes.iconAdd,
                color: AppColors.white,
              ),
            ),
          ),
        ),
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: Global.horizontalSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                "Life Goals",
                style: CommonUi.customTextStyle(
                  fontSize: AppFontSize.font27,
                  color: AppColors.customGrey,
                ),
              ),
              Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  itemCount: AppStorage.goals.length,
                  itemBuilder: (context, index) {
                    var goal = AppStorage.goals[index];
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      onTap: () {
                        Get.toNamed(
                          AppRoutes.viewPage,
                          arguments: goal.id,
                        );
                      },
                      title: Text(
                        goal.title,
                        style: CommonUi.customTextStyle(
                            fontFamily: AppFonts.medium),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          AppStorage.deleteGoal(AppStorage.goals[index]);
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    
    );
  }
}

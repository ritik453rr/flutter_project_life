import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life/common/app_colors.dart';
import 'package:life/common/app_font_size.dart';
import 'package:life/common/common_ui.dart';
import 'package:life/common/img_res.dart';
import 'package:life/global.dart';
import 'package:life/screens/view_page/view_page_controller.dart';

/// ViewPage is the screen where the user can view the details of a note.
class ViewPage extends GetView<ViewPageController> {
  const ViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: AppColors.customGreen,
      child: Scaffold(
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
              onPressed: () {},
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
                controller.goal?.title ?? '',
                style: CommonUi.customTextStyle(
                  fontSize: AppFontSize.font27,
                  color: AppColors.customGrey,
                ),
              ),

              // ListView.builder(
              //   shrinkWrap: true,
              //   itemCount: AppStorage.notes.length,
              //   itemBuilder: (context, index) {
              //     return ListTile(
              //       contentPadding: EdgeInsets.zero,
              //       onTap: () {
              //         Get.toNamed(
              //           AppRoutes.viewPage,
              //         );
              //       },
              //       title: Text(
              //         AppStorage.notes[index].title,
              //         style: CommonUi.customTextStyle(
              //             fontFamily: AppFonts.medium),
              //       ),
              //       subtitle: Text(AppStorage.notes[index].data),
              //       trailing: IconButton(
              //         icon: const Icon(Icons.delete),
              //         onPressed: () {
              //           AppStorage.deleteGoal(AppStorage.notes[index]);
              //         },
              //       ),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life/common/app_colors.dart';
import 'package:life/common/app_fonts.dart';
import 'package:life/common/common_ui.dart';
import 'package:life/common/img_res.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.onTapTrailingText,
    this.color = AppColors.transparent,
    this.trailingText = 'Done',
  });
  final void Function()? onTapTrailingText;
  final Color color;
  final String trailingText;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      iconTheme: const IconThemeData(color: AppColors.white),
      backgroundColor: color,
      surfaceTintColor: color,
      leading: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          Get.back();
        },
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: CommonUi.setSvgImg(ImgRes.backAarrow, color: AppColors.black),
        ),
      ),
      actions: [
        GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: onTapTrailingText,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              trailingText,
              style: CommonUi.customTextStyle(
                  fontSize: 14,
                  fontFamily: AppFonts.bold,
                  color: AppColors.black),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}

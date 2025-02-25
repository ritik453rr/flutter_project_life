import 'package:flutter/material.dart';
import 'package:life/common/app_colors.dart';
import 'package:life/common/app_fonts.dart';
import 'package:life/common/common_ui.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.maxLines = 1,
    this.hintFontSize = 20,
    this.textCapitalization = TextCapitalization.words,
    this.fontSize = 20,
    this.fontFamily = AppFonts.medium,
    this.color = AppColors.black,
    this.hintFontFamily = AppFonts.medium,
    this.hintColor = AppColors.customGrey,
    this.maxLength,
    
  });
  final TextEditingController? controller;
  final String? hintText;
  final int? maxLines;
  final double hintFontSize;
  final String hintFontFamily;
  final Color hintColor;
  final TextCapitalization textCapitalization;
  final double fontSize;
  final String fontFamily;
  final Color color;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
    maxLength:maxLength ,
      textCapitalization: textCapitalization,
      style: CommonUi.customTextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: color,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        counterText: '',
        contentPadding: EdgeInsets.zero,
        isDense: true,
        hintStyle: CommonUi.customTextStyle(
          fontSize: hintFontSize,
          fontFamily: hintFontFamily,
          color: hintColor,
        ),
        border: InputBorder.none,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:life/common/app_fonts.dart';

class CommonUi {
  static TextStyle customTextStyle({
    String fontFamily = AppFonts.fontRegular,
    double fontSize = 18,
    Color color = Colors.black,
  }) {
    return TextStyle(fontFamily: fontFamily, fontSize: fontSize, color: color);
  }
}

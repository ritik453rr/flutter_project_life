import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:life/common/app_fonts.dart';

/// Common UI class
class CommonUi {
  static TextStyle customTextStyle({
    String fontFamily = AppFonts.fontRegular,
    double fontSize = 18,
    Color color = Colors.black,
  }) {
    return TextStyle(fontFamily: fontFamily, fontSize: fontSize, color: color);
  }

/// Set SVG image
  static Widget setSvgImg(String img, {double? width, double? height,Color? color}) {
    return SvgPicture.asset(
      'assets/images/svg_images/$img.svg',
      width: width,
      height: height,
      color: color,
    );
  }
}

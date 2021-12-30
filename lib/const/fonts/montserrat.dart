import 'package:flutter/material.dart';

import '../color_palette.dart';
import 'font_famliy.dart';

class Montserrat {
  static const montserrat = FontFamily.montserrat;

  static const black85_s26_w600 = TextStyle(
      fontFamily: montserrat,
      color: ColorPalette.blackOpacity85,
      fontSize: 26,
      fontWeight: FontWeight.w600);

  static const main_s14_w600 = TextStyle(
      fontFamily: montserrat,
      color: ColorPalette.main,
      fontSize: 14,
      fontWeight: FontWeight.w600);

  static const cFF333333_s34_500 = TextStyle(
      fontFamily: montserrat,
      color: ColorPalette.cFF333333,
      fontSize: 34,
      fontWeight: FontWeight.w500);
}

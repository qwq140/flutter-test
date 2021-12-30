import 'dart:math' as math;

import 'package:flutter/material.dart';

// https://www.joshuamiron.com/percent-to-hex-converter percent to hex
class ColorPalette {
  static const LinearGradient mainLinearGradient = LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, transform: GradientRotation(math.pi / (180 / 314)), stops: [-0.1262, 1], colors: [ColorPalette.main, ColorPalette.mainGradient]);

  /// 메인컬러
  static const Color main = Color(0xFF00B1B3);
  static const Color mainGradient = Color(0xFF00CFA6);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color cFF333333 = Color(0xFF333333);
  static const Color cFFF8F8F8 = Color(0xFFF8F8F8);
  static const Color cFFD6D6D6 = Color(0xFFD6D6D6);
  static const Color cFFF9FAFA = Color(0xFFF9FAFA);
  static const Color cFFBFBFBF = Color(0xFFBFBFBF);
  static const Color cFFE7E7E7 = Color(0xFFE7E7E7);
  static const Color cFFE2E2E2 = Color(0xFFE2E2E2);
  static const Color cFF545454 = Color(0xFF545454);
  static const Color cFFEDEDED = Color(0xFFEDEDED);
  static const Color cFF9B9B9B = Color(0xFF9B9B9B);
  static const Color cFFE5E5E5 = Color(0xFFE5E5E5);
  static const Color cFF727272 = Color(0xFF727272);
  static const Color cFF5F5F5F = Color(0xFF5F5F5F);
  static const Color cFFFAFAFB = Color(0xFFFAFAFB);

  /// opacity 10%
  static const Color c1A5E5E5E = Color(0x1A5E5E5E);

  /// 0xD9000000
  static const Color blackOpacity85 = Color(0xD9000000);

  /// 0x99000000
  static const Color blackOpacity60 = Color(0x99000000);

  /// 0x66000000
  static const Color blackOpacity40 = Color(0x66000000);

  /// 0x1E000000
  static const Color blackOpacity30 = Color(0x4D000000);

  /// 0x2E000000
  static const Color blackOpacity18 = Color(0x2E000000);

  /// 0x61000000
  static const Color blackOpacity38 = Color(0x62000000);

  /// 0x62FFFFFF
  static const Color whiteOpacity38 = Color(0x62FFFFFF);
}

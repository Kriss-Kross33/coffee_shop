import 'package:coffee_shop/src/core/constants/app_color.dart';
import 'package:coffee_shop/src/core/constants/size_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../extensions/size_extensions.dart';

class ThemeText {
  const ThemeText._();

  static TextTheme get _nunitoTextTheme => GoogleFonts.nunitoTextTheme();
  static TextStyle get _blackHeadline6 => _nunitoTextTheme.headline6.copyWith(
        fontSize: Sizes.dimen_24.sp,
        color: AppColor.darkCharcoal,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get _blackHeadline5 => _nunitoTextTheme.headline5.copyWith(
        fontSize: Sizes.dimen_20.sp,
        color: AppColor.darkCharcoal,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get _whiteHeadline4 => _nunitoTextTheme.headline4.copyWith(
        fontSize: Sizes.dimen_18.sp,
        color: AppColor.white,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get _whiteHeadline2 => _nunitoTextTheme.headline2.copyWith(
        fontSize: Sizes.dimen_16.sp,
        color: AppColor.white,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get _whiteHeadline1 => _nunitoTextTheme.headline1.copyWith(
        fontSize: Sizes.dimen_24.sp,
        color: AppColor.white,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get whiteSubtitle1 => _nunitoTextTheme.button.copyWith(
        fontSize: Sizes.dimen_16.sp,
        color: Colors.white,
      );

  static TextStyle get _whiteButton => _nunitoTextTheme.subtitle1.copyWith(
        fontSize: Sizes.dimen_14.sp,
        color: Colors.white,
      );

  static TextStyle get greyBodyText2 => _nunitoTextTheme.bodyText2.copyWith(
        color: AppColor.lightDarkGrey,
        fontSize: Sizes.dimen_16.sp,
        wordSpacing: 0.25,
        letterSpacing: 0.25,
        height: 1.5,
      );

  static TextStyle get whiteBodyText1 => _nunitoTextTheme.bodyText1.copyWith(
        color: AppColor.white,
        fontSize: Sizes.dimen_16.sp,
        wordSpacing: 0.25,
        letterSpacing: 0.25,
        height: 1.2,
      );

  static getTextTheme() => TextTheme(
        headline5: _blackHeadline5,
        headline6: _blackHeadline6,
        headline1: _whiteHeadline1,
        headline2: _whiteHeadline2,
        headline4: _whiteHeadline4,
        subtitle1: whiteSubtitle1,
        bodyText1: whiteBodyText1,
        bodyText2: greyBodyText2,
        button: _whiteButton,
      );
}

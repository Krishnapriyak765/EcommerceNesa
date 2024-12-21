import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'font_constants.dart';

class Kstyles {
  //!---------------------(roboto extra light)
  Text extra1Light({
    required String text,
    Color color = AppColors.black,
    double? height,
    bool? softWrap,
    double? size,
    TextOverflow overflow = TextOverflow.ellipsis,
    TextAlign textAlign = TextAlign.start,
  }) {
    return Text(
      textAlign: textAlign,
      softWrap: softWrap,
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: size,
          color: color,
          fontWeight: FontConst().extraLight),
    );
  }

  Text extraLight7(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 7,
          color: color,
          fontWeight: FontConst().lightFont),
    );
  }

  Text extraLight30(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 30,
          color: color,
          fontWeight: FontConst().lightFont),
    );
  }

  Text extraLight(
      {required String text,
      Color color = AppColors.black,
      double? height,
      double? size,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: size,
          color: color,
          fontWeight: FontConst().lightFont),
    );
  }

  //!------------------(roboto medium light)
  //!---------------------(roboto extra light)
  Text medLight({
    required String text,
    Color color = AppColors.black,
    double? height,
    bool? softWrap,
    double? size,
    TextOverflow overflow = TextOverflow.ellipsis,
    TextAlign textAlign = TextAlign.start,
  }) {
    return Text(
      textAlign: textAlign,
      softWrap: softWrap,
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: size,
          color: color,
          fontWeight: FontConst().mediumLight),
    );
  }

  Text medLight7(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 7,
          color: color,
          fontWeight: FontConst().mediumLight),
    );
  }

  //!------------------(roboto light)
  Text light({
    required String text,
    Color color = AppColors.black,
    double? height,
    bool? softWrap,
    double? size,
    TextDecoration? decoration,
    Color? decorationColor,
    TextOverflow overflow = TextOverflow.ellipsis,
    TextAlign textAlign = TextAlign.start,
  }) {
    return Text(
      textAlign: textAlign,
      softWrap: softWrap,
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: size,
          color: color,
          fontWeight: FontConst().lightFont),
    );
  }

  Text light7(
      {required String text,
      Color color = AppColors.black,
      double? height,
      double? fontWeight,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 7,
          color: color,
          fontWeight: FontConst().lightFont),
    );
  }

  Text light9(
      {required String text,
      Color color = AppColors.black,
      double? height,
      double? fontWeight,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 9,
          color: color,
          fontWeight: FontConst().lightFont),
    );
  }

  Text light12(
      {required String text,
      Color color = AppColors.black,
      double? height,
      double? fontWeight,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 12,
          color: color,
          fontWeight: FontConst().lightFont),
    );
  }

  Text light30(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
        fontFamily: 'HelveticaNeue',
        height: height,
        fontSize: 30,
        color: color,
        fontWeight: FontConst().lightFont,
      ),
    );
  }

//!---------------------(roboto regular)

  Text reg6(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 6,
          color: color,
          fontWeight: FontConst().regularFont),
    );
  }

  Text reg12(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 12,
          color: color,
          fontWeight: FontConst().regularFont),
    );
  }

  Text reg({
    required String text,
    Color color = AppColors.black,
    double? height,
    bool? softWrap,
    double? size,
    TextOverflow overflow = TextOverflow.ellipsis,
    TextAlign textAlign = TextAlign.start,
    int? maxLines,
  }) {
    return Text(
      textAlign: textAlign,
      softWrap: softWrap,
      overflow: overflow,
      text,
      maxLines: maxLines,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: size,
          color: color,
          fontWeight: FontConst().regularFont),
    );
  }

  Text reg14(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 14,
          color: color,
          fontWeight: FontConst().regularFont),
    );
  }

  Text reg15(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 15,
          color: color,
          fontWeight: FontConst().regularFont),
    );
  }

//!---------------------(roboto medium)
  Text med12(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 12,
          color: color,
          fontWeight: FontConst().mediumFont),
    );
  }

//!---------------------(roboto medium)
  Text med14(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 14,
          color: color,
          fontWeight: FontConst().mediumFont),
    );
  }

  Text med15(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 15,
          color: color,
          fontWeight: FontConst().mediumFont),
    );
  }

  Text med24(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 24,
          color: color,
          fontWeight: FontConst().mediumFont),
    );
  }

  Text med30(
      {required String text,
      Color color = AppColors.black,
      double? height,
      double? size,
      bool? softWrap,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      softWrap: softWrap,
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 30,
          color: color,
          fontWeight: FontConst().mediumFont),
    );
  }

  Text med({
    required String text,
    Color color = AppColors.black,
    double? height,
    double? size,
    bool? softWrap,
    TextAlign? textAlign,
    TextDecoration? decoration,
    Color? decorationColor,
    TextOverflow overflow = TextOverflow.ellipsis,
    int? maxLines,
  }) {
    return Text(
      overflow: overflow,
      text,
      softWrap: softWrap,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        fontFamily: 'HelveticaNeue',
        height: height,
        fontSize: size,
        color: color,
        fontWeight: FontConst().mediumFont,
        decoration: decoration,
        decorationColor: decorationColor,
      ),
    );
  }

  Text med16(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 16,
          color: color,
          fontWeight: FontConst().mediumFont),
    );
  }

  Text med18(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 18,
          color: color,
          fontWeight: FontConst().mediumFont),
    );
  }

//!---------------------(roboto semiBold)
  Text semiBold12(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 12,
          color: color,
          fontWeight: FontConst().semiBoldFont),
    );
  }

  Text semiBold14({
    required String text,
    Color color = AppColors.black,
    double? height,
    TextOverflow overflow = TextOverflow.ellipsis,
  }) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
        fontFamily: 'HelveticaNeue',
        height: height,
        fontSize: 14,
        color: color,
        fontWeight: FontConst().mediumFont,
      ),
    );
  }

  Text semiBold(
      {required String text,
      Color color = AppColors.black,
      double? height,
      double? size,
      TextAlign? align,
      bool? softWrap,
      int? maxLines,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      maxLines: maxLines,
      textAlign: align,
      softWrap: softWrap,
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: size,
          color: color,
          fontWeight: FontConst().semiBoldFont),
    );
  }

//!---------------------(roboto Bold)
  Text bold12(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 12,
          color: color,
          fontWeight: FontConst().boldFont),
    );
  }

  Text bold({
    required String text,
    Color color = AppColors.black,
    double? height,
    double? size,
    int? maxLines,
    bool? softWrap,
    TextOverflow overflow = TextOverflow.ellipsis,
    TextAlign? align,
  }) {
    return Text(
      textAlign: align,
      softWrap: softWrap,
      overflow: overflow,
      text,
      maxLines: maxLines ?? 4,
      style: TextStyle(
        fontFamily: 'HelveticaNeue',
        height: height,
        fontSize: size,
        color: color,
        fontWeight: FontConst().boldFont,
      ),
    );
  }

  Text bold14(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 14,
          color: color,
          fontWeight: FontConst().boldFont),
    );
  }

  Text bold16(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 16,
          color: color,
          fontWeight: FontConst().boldFont),
    );
  }

  Text bold17({
    required String text,
    Color color = AppColors.black,
    double? height,
    TextOverflow overflow = TextOverflow.ellipsis,
  }) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 17,
          color: color,
          fontWeight: FontConst().boldFont),
    );
  }

  Text bold18(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 18,
          color: color,
          fontWeight: FontConst().boldFont),
    );
  }

  Text bold24(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 24,
          color: color,
          fontWeight: FontConst().boldFont),
    );
  }

  Text bold34(
      {required String text,
      Color color = AppColors.black,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 34,
          color: color,
          fontWeight: FontConst().boldFont),
    );
  }

  Text bold35(
      {required String text,
      Color color = AppColors.white,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 35,
          color: color,
          fontWeight: FontConst().boldFont),
    );
  }

  Text bold40(
      {required String text,
      Color color = AppColors.white,
      double? height,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'HelveticaNeue',
          height: height,
          fontSize: 40,
          color: color,
          fontWeight: FontConst().boldFont),
    );
  }
}

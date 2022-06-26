import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfind/constant_components/app_colors.dart';
import 'package:jobfind/constant_components/app_textstyles.dart';

class AppButtons {
  //Custom Filled Button
  static Widget customFilledButton({
    required String? onTopText,
    required Color? color,
    required void Function()? onTap,
    required bool? googleButton,
  }) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        height: 50.sp,
        width: 343.sp,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(9.sp),
        ),
        child: Align(
          alignment: Alignment.center,
          child: FittedBox(
            child: Text(
              onTopText!,
              style: googleButton! ? googleButtonTextStyle :  customButtonFirstTextStyle,
            ),
          ),
        ),
      ),
    );
  }

  //Custom Flat Button
  static Widget customFlatButton({
    required String? onTopText,
    required Color? color,
    required void Function()? onTap,
  }) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        height: 50.sp,
        width: 343.sp,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(9.sp),
          border: Border.all(
            color: AppColors.themeRed,
            width: 2.sp,
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: FittedBox(
            child: Text(
              onTopText!,
              style: customButtonSecondTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}

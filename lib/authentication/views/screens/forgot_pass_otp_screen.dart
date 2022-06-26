import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfind/constant_components/app_buttons.dart';
import 'package:jobfind/constant_components/app_colors.dart';
import 'package:jobfind/constant_components/app_strings.dart';
import 'package:jobfind/constant_components/app_textstyles.dart';

class ForgotPasswordOtpScreen extends StatelessWidget {
  const ForgotPasswordOtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 1.sh,
          width: 1.sw,
          color: AppColors.white,
          child: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(overscroll: false),
            child: ListView(
              padding: EdgeInsets.only(
                left: 17.sp,
                right: 15.sp,
              ),
              children: [
                SizedBox(
                  height: 80.sp,
                ),
                Text(
                  AppStrings. forgotPasswordScreenFourthText,
                  style: authenticationTitleTextStyle,
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Text(
                  AppStrings.forgotPasswordScreenSixthText,
                  textAlign: TextAlign.left,
                  style: forgotPassSubtitleTextStyle,
                ),
                SizedBox(
                  height: 20.sp,
                ),
                //OTP Textfields
                SizedBox(
                  height: 50.sp,
                ),
                AppButtons.customFilledButton(
                  onTopText: AppStrings.forgotPasswordScreenSeventhText,
                  color: AppColors.themeRed,
                  googleButton: false,
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ForgotPasswordOtpScreen(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );;
  }
}

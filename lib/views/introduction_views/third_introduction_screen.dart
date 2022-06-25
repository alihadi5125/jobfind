import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfind/views/utils/app_constants/app_colors.dart';
import 'package:jobfind/views/utils/app_constants/app_images.dart';
import 'package:jobfind/views/utils/app_constants/app_strings.dart';
import 'package:jobfind/views/utils/app_constants/app_textstyles.dart';

class ThirdIntroductionScreen extends StatelessWidget {
  const ThirdIntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.sh,
      width: 1.sw,
      color: AppColors.white,
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 80.sp,
          ),
          Image.asset(
            AppImages.thirdIntroductionImage,
            height: 280.sp,
            width: 280.sp,
          ),
          SizedBox(
            height: 20.03.sp,
          ),
          Align(
            alignment: Alignment.center,
            child: FittedBox(
              child: Text(
                AppStrings.introductionScreenFifthText,
                style: introductionTitleTextStyle,
              ),
            ),
          ),
          SizedBox(
            height: 30.03.sp,
          ),
          Align(
            alignment: Alignment.center,
            child: FittedBox(
              child: Text(
                AppStrings.introductionScreenSixthText,
                textAlign: TextAlign.center,
                style: introductionSubtitleTextStyle ,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobfind/views/introduction_views/introduction_screen_pageview.dart';
import 'package:jobfind/views/utils/app_constants/app_colors.dart';
import 'package:jobfind/views/utils/app_constants/app_strings.dart';
import 'package:jobfind/views/utils/custom_widgets/app_buttons.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 1.sh,
          width: 1.sw,
          color: AppColors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              SizedBox(
                height: 0.4.sh,
              ),
              Center(
                child: AppButtons.customFilledButton(
                  onTopText: AppStrings.splashScreenFirstText,
                  color: AppColors.themeRed,
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const IntroductionScreenPageView(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Center(
                child: AppButtons.customFilledButton(
                  onTopText: AppStrings.splashScreenSecondText,
                  color: AppColors.themeRed,
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const IntroductionScreenPageView(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

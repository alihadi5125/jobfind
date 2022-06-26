import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobfind/authentication/views/screens/introduction_screen_pageview.dart';
import 'package:jobfind/authentication/views/screens/login_views.dart';
import 'package:jobfind/constant_components/app_colors.dart';
import 'package:jobfind/constant_components/app_strings.dart';
import 'package:jobfind/constant_components/app_buttons.dart';

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
                  googleButton: false,
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
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
                  googleButton: false,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

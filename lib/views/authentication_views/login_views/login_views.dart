import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobfind/controllers/cubits/authentication_cubits/login_secure_password_cubit.dart';
import 'package:jobfind/controllers/cubits/authentication_cubits/signup_secure_password_cubit.dart';
import 'package:jobfind/views/authentication_views/signup_views/signup_screen.dart';
import 'package:jobfind/views/dashboard_views/dashboard_pageview_screen.dart';
import 'package:jobfind/views/utils/app_constants/app_colors.dart';
import 'package:jobfind/views/utils/app_constants/app_properties.dart';
import 'package:jobfind/views/utils/app_constants/app_strings.dart';
import 'package:jobfind/views/utils/app_constants/app_textstyles.dart';
import 'package:jobfind/views/utils/app_constants/custom_slide_page_transition.dart';
import 'package:jobfind/views/utils/custom_widgets/app_buttons.dart';
import 'package:jobfind/views/utils/custom_widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.white,
      extendBody: true,
      body: Container(
        height: 1.sh,
        width: 1.sw,
        color: AppColors.white,
        child: ListView(
          padding: EdgeInsets.only(
            left: 17.sp,
            right: 15.sp,
          ),
          children: [
            SizedBox(
              height: 80.sp,
            ),
            Container(
              height: 45.sp,
              width: 115.sp,
              color: AppColors.white,
              alignment: Alignment.centerLeft,
              child: Text(
                AppStrings.loginScreenFirstText,
                style: authenticationTitleTextStyle,
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            BlocBuilder<SignupSecurePasswordCubit, bool>(
              builder: (context, state) {
                return CustomTextField(
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.emailAddress,
                  maxLines: 1,
                  prefixIcon: Icons.email_outlined,
                  suffixIcon: Icons.remove_red_eye,
                  includeSuffixIcon: false,
                  controller: AppProperties.loginUserEmailController,
                  secureText: false,
                  state: state,
                  hintText: AppStrings.signupScreenFourthText,
                  onPressed: () => context
                      .read<SignupSecurePasswordCubit>()
                      .setSuffixText(secureText: state ? false : true),
                );
              },
            ),
            SizedBox(
              height: 15.sp,
            ),
            BlocBuilder<LoginSecurePasswordCubit, bool>(
              builder: (context, state) {
                return CustomTextField(
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.visiblePassword,
                  maxLines: 1,
                  prefixIcon: Icons.lock,
                  suffixIcon: Icons.remove_red_eye,
                  includeSuffixIcon: true,
                  controller: AppProperties.loginUserPasswordController,
                  secureText: true,
                  state: state,
                  hintText: AppStrings.signupScreenSixthText,
                  onPressed: () => context
                      .read<LoginSecurePasswordCubit>()
                      .setSuffixText(secureText: state ? false : true),
                );
              },
            ),
            SizedBox(
              height: 70.sp,
            ),
            AppButtons.customFilledButton(
              onTopText: AppStrings.loginScreenFirstText,
              color: AppColors.themeRed,
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DashboardPageViewScreen(),
                ),
              ),
            ),
            SizedBox(
              height: 25.sp,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.poppins(
                    color: AppColors.authenticationHintTextColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                  ),
                  text: AppStrings.loginScreenFourthText,
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            CustomSlidePageRoute(
                              child: const SignupScreen(),
                              direction: AxisDirection.left,
                            ),
                          );
                        },
                      text: AppStrings.loginScreenFirstText,
                      style: GoogleFonts.poppins(
                        color: AppColors.themeRed,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

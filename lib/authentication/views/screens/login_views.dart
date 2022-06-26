import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobfind/authentication/controllers/cubits/login_secure_password_cubit.dart';
import 'package:jobfind/authentication/controllers/cubits/signup_secure_password_cubit.dart';
import 'package:jobfind/authentication/views/screens/forgot_pass_number_screen.dart';
import 'package:jobfind/authentication/views/screens/signup_screen.dart';
import 'package:jobfind/constant_components/app_colors.dart';
import 'package:jobfind/constant_components/app_icons.dart';
import 'package:jobfind/constant_components/app_properties.dart';
import 'package:jobfind/constant_components/app_strings.dart';
import 'package:jobfind/constant_components/app_textstyles.dart';
import 'package:jobfind/constant_components/custom_slide_page_transition.dart';
import 'package:jobfind/constant_components/app_buttons.dart';
import 'package:jobfind/constant_components/custom_textfield.dart';

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
                    prefixIcon: AppIcons.email,
                    suffixIcon: AppIcons.password,
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
                    prefixIcon: AppIcons.lock,
                    suffixIcon: AppIcons.password,
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
                height: 8.sp,
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: (){
                  Navigator.push(
                    context,
                    CustomSlidePageRoute(
                      child: const ForgotButtonPhoneNumberScreen(),
                      direction: AxisDirection.up,
                    ),
                  );
                },
                child: Text(
                  AppStrings.loginScreenForgotButtonText,
                  textAlign: TextAlign.right,
                  style: forgotPasswordTextStyle,
                ),
              ),
              SizedBox(
                height: 70.sp,
              ),
              AppButtons.customFilledButton(
                onTopText: AppStrings.loginScreenFirstText,
                color: AppColors.themeRed,
                googleButton: false,
                onTap: (){},
                // onTap: () => Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => const DashboardPageViewScreen(),
                //   ),
                // ),
              ),
              SizedBox(
                height: 8.sp,
              ),
              Text(
                AppStrings.loginScreenSecondText,
                textAlign: TextAlign.center,
                style: loginOrTextStyle,
              ),
              SizedBox(
                height: 8.sp,
              ),
              AppButtons.customFilledButton(
                onTopText: AppStrings.loginScreenThirdText,
                color: AppColors.goggleButtonColor,
                googleButton: true,
                onTap: (){},
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
                        text: AppStrings.loginScreenFifthText,
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
      ),
    ));
  }
}

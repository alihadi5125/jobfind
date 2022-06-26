import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfind/authentication/controllers/cubits/signup_secure_password_cubit.dart';
import 'package:jobfind/authentication/views/screens/forgot_pass_otp_screen.dart';
import 'package:jobfind/constant_components/app_buttons.dart';
import 'package:jobfind/constant_components/app_colors.dart';
import 'package:jobfind/constant_components/app_icons.dart';
import 'package:jobfind/constant_components/app_properties.dart';
import 'package:jobfind/constant_components/app_strings.dart';
import 'package:jobfind/constant_components/app_textstyles.dart';
import 'package:jobfind/constant_components/custom_textfield.dart';

class ForgotButtonPhoneNumberScreen extends StatelessWidget {
  const ForgotButtonPhoneNumberScreen({Key? key}) : super(key: key);

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
                  AppStrings.forgotPasswordScreenFirstText,
                  style: authenticationTitleTextStyle,
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Text(
                  AppStrings.forgotPasswordScreenSecondText,
                  textAlign: TextAlign.left,
                  style: forgotPassSubtitleTextStyle,
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
                      controller: AppProperties.forgotPasswordEmailController,
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
                  height: 50.sp,
                ),
                AppButtons.customFilledButton(
                  onTopText: AppStrings.forgotPasswordScreenSeventhText ,
                  color: AppColors.themeRed,
                  googleButton: false,
                  onTap: (){}
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

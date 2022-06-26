import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobfind/authentication/controllers/cubits/login_secure_password_cubit.dart';
import 'package:jobfind/authentication/controllers/cubits/signup_secure_password_enter_cubit.dart';
import 'package:jobfind/constant_components/app_colors.dart';
import 'package:jobfind/constant_components/app_textstyles.dart';

class CustomTextField extends StatefulWidget {
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final int? maxLines;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool? includeSuffixIcon;
  final bool? secureText;
  final TextEditingController? controller;
  final void Function()? onPressed;
  final bool? state;
  final String? hintText;

  const CustomTextField({
    super.key,
    required this.textInputAction,
    required this.textInputType,
    required this.maxLines,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.includeSuffixIcon,
    required this.controller,
    required this.secureText,
    this.onPressed,
    this.state,
    required this.hintText,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      style: textFieldStyle,
      cursorColor: AppColors.introductionTitleTextColor,
      textInputAction: widget.textInputAction,
      keyboardType: widget.textInputType,
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.dividerColor,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.themeRed,
          ),
        ),
        hintText: widget.hintText,
        hintStyle: textFieldHintTextStyle,
        prefixIcon: Padding(
          padding: EdgeInsets.only(
            top: 3.sp,
          ),
          child: Icon(
            widget.prefixIcon,
            color: AppColors.authenticationHintTextColor,
            size: 16.0.sp,
          ),
        ),
        suffixIcon: widget.includeSuffixIcon!
            ? IconButton(
                onPressed: widget.onPressed,
                icon: Icon(
                  widget.suffixIcon,
                  color: AppColors.authenticationHintTextColor,
                  size: 14.0.sp,
                ),
              )
            : const SizedBox(),
      ),
      obscureText: widget.includeSuffixIcon! ? widget.state! : false,
      //obscureText: true,
    );
  }
}

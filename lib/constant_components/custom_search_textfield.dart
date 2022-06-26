import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobfind/authentication/controllers/cubits/login_secure_password_cubit.dart';
import 'package:jobfind/authentication/controllers/cubits/signup_secure_password_enter_cubit.dart';
import 'package:jobfind/constant_components/app_colors.dart';
import 'package:jobfind/constant_components/app_textstyles.dart';

class CustomSearchTextField extends StatefulWidget {
  final IconData? prefixIcon;
  final TextEditingController? controller;
  final String? hintText;

  const CustomSearchTextField({
    super.key,
    required this.prefixIcon,
    required this.controller,
    required this.hintText,
  });

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.sp),
      child: TextFormField(
        controller: widget.controller,
        style: textFieldStyle,
        cursorColor: AppColors.introductionTitleTextColor,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade100,
              width: 1.sp,
            ),
            borderRadius: BorderRadius.circular(10.sp),
          ),
          focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade100,
              width: 1.sp,
            ),
            borderRadius: BorderRadius.circular(10.sp),
          ),
          filled: true,
          fillColor: Colors.grey.shade100,
          hintText: widget.hintText,
          hintStyle: searchHintTextTextStyle,
          prefixIcon: Icon(
            widget.prefixIcon,
            color: AppColors.dividerColor,
            size: 16.0.sp,
          ),
          contentPadding: EdgeInsets.only(bottom: 0.sp),
        ),
        //obscureText: true,
      ),
    );
  }
}

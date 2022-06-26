import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobfind/constant_components/app_colors.dart';
import 'package:jobfind/constant_components/app_constants.dart';
import 'package:jobfind/constant_components/app_icons.dart';
import 'package:jobfind/constant_components/app_properties.dart';
import 'package:jobfind/constant_components/app_strings.dart';
import 'package:jobfind/constant_components/app_textstyles.dart';
import 'package:jobfind/job_poster/conrollers/cubits/job_poster_dashboard_pageview_cubit.dart';

class SponsorBottomNavigationBar extends StatelessWidget {
  const SponsorBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.sp,
      width: 1.sw,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          offset: Offset(-2.sp, 10.sp),
          blurRadius: 10.sp,
          spreadRadius: 10.sp,
          color: Colors.black38,
        ),
      ]),
      child: BottomAppBar(
        color: AppColors.white,
        elevation: 0,
        shape: const CircularNotchedRectangle(),
        notchMargin: 9.sp,
        child: BlocBuilder<JobPosterDashboardPageviewCubit, int>(
          builder: (context, state) {
            return ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(
                left: 15.sp,
                right: 20.sp,
                top: 8.sp,
                bottom: 3.sp,
              ),
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    context
                        .read<JobPosterDashboardPageviewCubit>()
                        .setIndex(pageIndex: 0);
                    AppProperties.jobPosterDashboardSelectedPage.animateToPage(
                      0,
                      duration: const Duration(
                        milliseconds: 1,
                      ),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          CupertinoIcons.home,
                          color: state == 0 ? AppColors.themeRed : AppColors.dividerColor,
                          size: 30.sp,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.center,
                          child: FittedBox(
                            child: Text(
                              AppStrings.jobPosterFirstText,
                              style: state == 0
                                  ? jobPostBottomNavBarFirstTextStyle
                                  : jobPostBottomNavBarSecondTextStyle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 12.sp,
                ),
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    context
                        .read<JobPosterDashboardPageviewCubit>()
                        .setIndex(pageIndex: 1);
                    AppProperties.jobPosterDashboardSelectedPage.animateToPage(
                      1,
                      duration: const Duration(
                        milliseconds: 1,
                      ),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          AppIcons.icon_material_message,
                          color: state == 1 ? AppColors.themeRed : AppColors.dividerColor,
                          size: 28.sp,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.center,
                          child: FittedBox(
                            child: Text(
                              AppStrings.jobPosterSecondText,
                              style: state == 1
                                  ? jobPostBottomNavBarFirstTextStyle
                                  : jobPostBottomNavBarSecondTextStyle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 70.sp,
                ),
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    context
                        .read<JobPosterDashboardPageviewCubit>()
                        .setIndex(pageIndex: 2);
                    AppProperties.jobPosterDashboardSelectedPage.animateToPage(
                      2,
                      duration: const Duration(
                        milliseconds: 1,
                      ),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          CupertinoIcons.bell,
                          color: state == 2 ? AppColors.themeRed : AppColors.dividerColor,
                          size: 30.sp,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.center,
                          child: FittedBox(
                            child: Text(
                              AppStrings.jobPosterThirdText,
                              style: state == 2
                                  ? jobPostBottomNavBarFirstTextStyle
                                  : jobPostBottomNavBarSecondTextStyle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.sp,
                ),
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    context
                        .read<JobPosterDashboardPageviewCubit>()
                        .setIndex(pageIndex: 3);
                    AppProperties.jobPosterDashboardSelectedPage.animateToPage(
                      3,
                      duration: const Duration(
                        milliseconds: 1,
                      ),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.settings,
                          color: state == 3 ? AppColors.themeRed : AppColors.dividerColor,
                          size: 30.sp,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.center,
                          child: FittedBox(
                            child: Text(
                              AppStrings.jobPosterFourthText,
                              style: state == 3
                                  ? jobPostBottomNavBarFirstTextStyle
                                  : jobPostBottomNavBarSecondTextStyle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

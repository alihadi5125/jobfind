import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfind/constant_components/app_colors.dart';
import 'package:jobfind/constant_components/app_icons.dart';
import 'package:jobfind/constant_components/app_properties.dart';
import 'package:jobfind/constant_components/app_strings.dart';
import 'package:jobfind/constant_components/app_textstyles.dart';
import 'package:jobfind/constant_components/custom_search_textfield.dart';
import 'package:jobfind/job_poster/conrollers/cubits/home_tab_pageview_cubit.dart';
import 'package:jobfind/job_poster/views/screens/home/canceled_jobs_tab.dart';
import 'package:jobfind/job_poster/views/screens/home/completed_jobs_tab.dart';
import 'package:jobfind/job_poster/views/screens/home/my_jobs_tab.dart';

class JobPosterHomeScreen extends StatelessWidget {
  const JobPosterHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.white,
        body: BlocBuilder<HomeTabPageviewCubit, int>(
          builder: (context, state) {
            return Container(
              height: 1.sh,
              width: 1.sw,
              color: AppColors.white,
              child: ScrollConfiguration(
                behavior: const ScrollBehavior().copyWith(overscroll: false),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      height: 60.sp,
                      width: 1.sw,
                      color: AppColors.white,
                      child: ListView(
                        padding: EdgeInsets.symmetric(horizontal: 15.sp),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          Icon(
                            CupertinoIcons.profile_circled,
                            color: AppColors.themeRed,
                            size: 30.sp,
                          ),
                          SizedBox(
                            width: 25.sp,
                          ),
                          SizedBox(
                            width: 260.sp,
                            child: CustomSearchTextField(
                              controller:
                              AppProperties.jobPosterSearchTextFieldController,
                              hintText: AppStrings.jobPosterFifthText,
                              prefixIcon: AppIcons.search,
                            ),
                          ),
                          SizedBox(
                            width: 25.sp,
                          ),
                          Icon(
                            AppIcons.notification,
                            color: AppColors.themeRed,
                            size: 25.sp,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.sp,
                      width: 1.sw,
                      color: Colors.grey.shade100,
                      child: ListView(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        children: [
                          InkWell(
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onTap: (){
                              context
                                  .read<HomeTabPageviewCubit>()
                                  .setIndex(pageIndex: 0);
                              AppProperties.jobPosterDashboardHomePageViewController
                                  .animateToPage(
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
                                  flex: 15,
                                  child: Container(
                                    width: 0.3.sw, //0.4.sw
                                    color: Colors.grey.shade100,
                                    alignment: Alignment.center,
                                    child: FittedBox(
                                      child: Text(
                                        AppStrings.jobPosterSixthText,
                                        style:state == 0 ?  jobPosterHomeTabPageViewFirstTextTextStyle : jobPosterHomeTabPageViewSecondTextTextStyle,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: 0.3.sw, //0.4.sw
                                    decoration: BoxDecoration(
                                      color: state == 0 ?  AppColors.themeRed : Colors.grey.shade100,
                                      borderRadius: BorderRadius.circular(10.sp),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onTap: (){
                              context
                                  .read<HomeTabPageviewCubit>()
                                  .setIndex(pageIndex: 1);
                              AppProperties.jobPosterDashboardHomePageViewController
                                  .animateToPage(
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
                                  flex: 15,
                                  child: Container(
                                    width: 0.3.sw, //0.4.sw
                                    color: Colors.grey.shade100,
                                    alignment: Alignment.center,
                                    child: FittedBox(
                                      child: Text(
                                        AppStrings.jobPosterSeventhText,
                                        style:state == 1 ?  jobPosterHomeTabPageViewFirstTextTextStyle : jobPosterHomeTabPageViewSecondTextTextStyle,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: 0.4.sw,
                                    decoration: BoxDecoration(
                                      color: state == 1 ?  AppColors.themeRed : Colors.grey.shade100,
                                      borderRadius: BorderRadius.circular(10.sp),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onTap: (){
                              context
                                  .read<HomeTabPageviewCubit>()
                                  .setIndex(pageIndex: 2);
                              AppProperties.jobPosterDashboardHomePageViewController
                                  .animateToPage(
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
                                  flex: 15,
                                  child: Container(
                                    width: 0.3.sw, //0.4.sw
                                    color: Colors.grey.shade100,
                                    alignment: Alignment.center,
                                    child: FittedBox(
                                      child: Text(
                                        AppStrings.jobPosterEighthText,
                                        style:state == 2 ?  jobPosterHomeTabPageViewFirstTextTextStyle : jobPosterHomeTabPageViewSecondTextTextStyle,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: 0.3.sw, //0.4.sw
                                    decoration: BoxDecoration(
                                      color: state == 2 ?  AppColors.themeRed : Colors.grey.shade100,
                                      borderRadius: BorderRadius.circular(10.sp),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1.sh,
                      width: 1.sw,
                      color: AppColors.white,
                      child: PageView(
                        controller:
                        AppProperties.jobPosterDashboardHomePageViewController,
                        onPageChanged: (index) {
                          context
                              .read<HomeTabPageviewCubit>()
                              .setIndex(pageIndex: null);
                        },
                        children: const [
                          MyJobsTab(),
                          CompletedJobsTab(),
                          CanceledJobsTab(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

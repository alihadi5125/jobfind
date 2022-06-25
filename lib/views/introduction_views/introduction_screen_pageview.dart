import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfind/controllers/cubits/introduction_cubits/introduction_page_view_cubit.dart';
import 'package:jobfind/views/authentication_views/signup_views/signup_screen.dart';
import 'package:jobfind/views/introduction_views/first_introduction_screen.dart';
import 'package:jobfind/views/introduction_views/second_introduction_screen.dart';
import 'package:jobfind/views/introduction_views/third_introduction_screen.dart';
import 'package:jobfind/views/utils/app_constants/app_colors.dart';
import 'package:jobfind/views/utils/app_constants/app_constants.dart';
import 'package:jobfind/views/utils/app_properties.dart';
import 'package:jobfind/views/utils/custom_widgets/app_buttons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionScreenPageView extends StatelessWidget {
  const IntroductionScreenPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntroductionPageViewCubit, int>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: Container(
            height: 300.sp,
            width: 1.sw,
            color: AppColors.white,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              children: [
                Container(
                  height: 16.sp,
                  width: 1.sw,
                  alignment: Alignment.center,
                  child: SmoothPageIndicator(
                    controller: AppProperties.introductionSelectedPage,
                    count: 3,
                    effect: ScrollingDotsEffect(
                      activeDotColor: AppColors.introductionTitleTextColor,
                      spacing: 9.sp,
                      activeDotScale: 1.sp,
                      dotColor: Colors.grey.shade300,
                      paintStyle: PaintingStyle.fill,
                      dotHeight: 9.sp,
                      dotWidth: 9.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 94.sp,
                ),
                Center(
                  child: state == 2
                      ? AppButtons.customFilledButton(
                          onTopText: 'Get Start',
                          color: AppColors.themeRed,
                          onTap: (){
                            Navigator.push(
                              context,
                              AppContents.scalePageTransition(
                                page: const SignupScreen(),
                              ),
                            );
                          },
                        )
                      : AppButtons.customFlatButton(
                          onTopText: 'Next',
                          color: AppColors.white,
                          onTap: () {
                            AppProperties.introductionSelectedPage.nextPage(
                              duration: const Duration(milliseconds: 600),
                              curve: Curves.easeInOut,
                            );
                          },
                        ),
                )
              ],
            ),
          ),
          body: SafeArea(
            child: ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(overscroll: false),
              child: PageView(
                controller: AppProperties.introductionSelectedPage,
                onPageChanged: (index) {
                  context
                      .read<IntroductionPageViewCubit>()
                      .setIndex(index: index);
                },
                children: [
                  FirstIntroductionScreen(),
                  SecondIntroductionScreen(),
                  ThirdIntroductionScreen(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

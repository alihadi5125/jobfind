import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfind/authentication/controllers/cubits/introduction_page_view_cubit.dart';
import 'package:jobfind/authentication/views/screens/login_views.dart';
import 'package:jobfind/authentication/views/screens/signup_screen.dart';
import 'package:jobfind/authentication/views/screens/first_introduction_screen.dart';
import 'package:jobfind/authentication/views/screens/second_introduction_screen.dart';
import 'package:jobfind/authentication/views/screens/splash_screen.dart';
import 'package:jobfind/authentication/views/screens/third_introduction_screen.dart';
import 'package:jobfind/constant_components/app_colors.dart';
import 'package:jobfind/constant_components/app_constants.dart';
import 'package:jobfind/constant_components/app_properties.dart';
import 'package:jobfind/constant_components/app_buttons.dart';
import 'package:jobfind/constant_components/app_strings.dart';
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
                          onTopText: AppStrings.introductionScreenSeventhText,
                          color: AppColors.themeRed,
                          googleButton: false,
                          onTap: (){
                            Navigator.push(
                              context,
                              AppContents.scalePageTransition(
                                page: const SplashScreen(),
                              ),
                            );
                          },
                        )
                      : AppButtons.customFlatButton(
                          onTopText: AppStrings.introductionScreenEighthText ,
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
                children: const [
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

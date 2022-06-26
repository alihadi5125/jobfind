import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfind/constant_components/app_colors.dart';
import 'package:jobfind/constant_components/app_properties.dart';
import 'package:jobfind/job_poster/conrollers/cubits/job_poster_dashboard_pageview_cubit.dart';

class CenterButton extends StatelessWidget {
  const CenterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobPosterDashboardPageviewCubit, int>(
      builder: (context, state) {
        return InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            context
                .read<JobPosterDashboardPageviewCubit>()
                .setIndex(pageIndex: 4);
            AppProperties.jobPosterDashboardSelectedPage.animateToPage(
              4,
              duration: const Duration(
                milliseconds: 1,
              ),
              curve: Curves.easeInOut,
            );
          },
          child: Container(
            height: 65.sp,
            width: 65.sp,
            decoration: BoxDecoration(
              color: AppColors.themeRed,
              shape: BoxShape.circle,

            ),
            child: Icon(
              Icons.add,
              color: AppColors.white,
              size: 30.sp,
            ),
          ),
        );
      },
    );
  }
}

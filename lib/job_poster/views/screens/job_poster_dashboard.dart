import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfind/constant_components/app_colors.dart';
import 'package:jobfind/constant_components/app_icons.dart';
import 'package:jobfind/constant_components/app_properties.dart';
import 'package:jobfind/job_poster/conrollers/cubits/job_poster_dashboard_pageview_cubit.dart';
import 'package:jobfind/job_poster/views/custom_widgets/bottom_navigation_bar.dart';
import 'package:jobfind/job_poster/views/custom_widgets/floating_action_button.dart';

class JobPosterDashboard extends StatelessWidget {
  const JobPosterDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<JobPosterDashboardPageviewCubit, int>(
        builder: (context, state) {
          return Scaffold(
            extendBody: true,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: const CenterButton(),
            bottomNavigationBar: const SponsorBottomNavigationBar(),
            body: Container(
              height: 1.sh,
              width: 1.sw,
              color: AppColors.white,
              child: ScrollConfiguration(
                behavior: const ScrollBehavior().copyWith(overscroll: false),
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: AppProperties.jobPosterDashboardSelectedPage,
                  onPageChanged: (index) {
                    context
                        .read<JobPosterDashboardPageviewCubit>()
                        .setIndex(pageIndex: null);
                  },
                  children: [
                    Container(
                      height: 1.sh,
                      width: 1.sw,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          'Home Screen'
                        ),
                      ),
                    ),
                    Container(
                      height: 1.sh,
                      width: 1.sw,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                            'Messages Screen'
                        ),
                      ),
                    ),
                    Container(
                      height: 1.sh,
                      width: 1.sw,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                            'Notifications Screen'
                        ),
                      ),
                    ),
                    Container(
                      height: 1.sh,
                      width: 1.sw,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                            'Settings Screen'
                        ),
                      ),
                    ),
                    Container(
                      height: 1.sh,
                      width: 1.sw,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                            'New Job Post Screen'
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

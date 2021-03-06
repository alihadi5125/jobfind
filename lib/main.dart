import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfind/authentication/controllers/cubits/login_secure_password_cubit.dart';
import 'package:jobfind/authentication/controllers/cubits/signup_secure_password_cubit.dart';
import 'package:jobfind/authentication/controllers/cubits/signup_secure_password_enter_cubit.dart';
import 'package:jobfind/authentication/controllers/cubits/introduction_page_view_cubit.dart';
import 'package:jobfind/authentication/views/screens/introduction_screen_pageview.dart';
import 'package:jobfind/authentication/views/screens/splash_screen.dart';
import 'package:jobfind/job_poster/conrollers/cubits/home_tab_pageview_cubit.dart';
import 'package:jobfind/job_poster/conrollers/cubits/job_poster_dashboard_pageview_cubit.dart';
import 'package:jobfind/job_poster/views/screens/job_poster_dashboard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<IntroductionPageViewCubit>(
          create: (BuildContext context) => IntroductionPageViewCubit(0),
        ),
        BlocProvider<SignupSecurePasswordCubit>(
          create: (BuildContext context) => SignupSecurePasswordCubit(false),
        ),
        BlocProvider<SignupSecurePasswordEnterCubit>(
          create: (BuildContext context) =>
              SignupSecurePasswordEnterCubit(false),
        ),
        BlocProvider<LoginSecurePasswordCubit>(
          create: (BuildContext context) => LoginSecurePasswordCubit(false),
        ),
        BlocProvider<JobPosterDashboardPageviewCubit>(
          create: (BuildContext context) => JobPosterDashboardPageviewCubit(0),
        ),
        BlocProvider<HomeTabPageviewCubit>(
          create: (BuildContext context) => HomeTabPageviewCubit(0),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return  MaterialApp(
            debugShowCheckedModeBanner: false,
            home: IntroductionScreenPageView(),
            //home: JobPosterDashboard(),
          );
        },
      ),
    );
  }
}

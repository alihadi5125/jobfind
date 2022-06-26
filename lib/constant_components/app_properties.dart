import 'package:flutter/material.dart';

class AppProperties {
  //Introduction PageView() controller
  static PageController introductionSelectedPage =
      PageController(initialPage: 0);

  //signup form controllers
  static TextEditingController signupUserNameController =
      TextEditingController();
  static TextEditingController signupUserEmailController =
      TextEditingController();
  static TextEditingController signupUserPasswordController =
      TextEditingController();
  static TextEditingController signupUserReEnterPasswordController =
      TextEditingController();
  static TextEditingController signupUserReferController =
      TextEditingController();

  //login form controllers
  static TextEditingController loginUserEmailController =
      TextEditingController();
  static TextEditingController loginUserPasswordController =
      TextEditingController();

  //forgot password controllers
  static TextEditingController forgotPasswordEmailController =
      TextEditingController();

  //job poster dashboard controller
  static PageController jobPosterDashboardSelectedPage =
  PageController(initialPage: 0);
  static PageController jobPosterDashboardHomePageViewController =
  PageController(initialPage: 0);
  static TextEditingController jobPosterSearchTextFieldController =
  TextEditingController();

}

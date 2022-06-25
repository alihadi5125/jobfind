import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardPageViewScreen extends StatelessWidget {
  const DashboardPageViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'Dashboard Screen',
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyJobsTab extends StatelessWidget {
  const MyJobsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 1.sw,
      child: ScrollConfiguration(
        behavior: const ScrollBehavior()
            .copyWith(overscroll: false),
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(bottom: 250.sp),
          children: [
            //Write your code it is scrollable
            Center(child: Text('My Jobs'))
          ],
        ),
      ),
    );
  }
}

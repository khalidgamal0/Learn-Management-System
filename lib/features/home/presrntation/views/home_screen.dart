import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_task/features/home/presrntation/views/widgets/home_first_section.dart';
import 'package:lms_task/features/home/presrntation/views/widgets/home_grid_view.dart';
import 'package:lms_task/features/home/presrntation/views/widgets/home_second_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 15.0.w, vertical: 20.h),
            child:
            Column(
                crossAxisAlignment: CrossAxisAlignment.start, children: [
              const HomeFirstSection(),
              SizedBox(
                height: 30.h,
              ),
              const HomeSecondSection(),
              SizedBox(
                height: 15.h,
              ),
              const HomeGridView(),
            ]),
          ),
        ),
      ),
    );
  }
}

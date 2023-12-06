import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_task/features/courses/presentation/views/widgets/course_list_view.dart';
import 'package:lms_task/features/courses/presentation/views/widgets/courses_appbar.dart';
import 'package:lms_task/features/courses/presentation/views/widgets/courses_search_section.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F9FF),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25.r),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const CoursesAppBar(),
            SizedBox(
              height: 15.h,
            ),
            const CoursesSearchSection(),
            SizedBox(
              height: 20.h,
            ),
            const CoursesListView()
          ]),
        ),
      ),
    );
  }
}





import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_task/core/utils/functions/navigator_push.dart';
import 'package:lms_task/features/courses/presentation/manager/courses_cubit.dart';
import 'package:lms_task/features/courses/presentation/views/courses_screen.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class HomeSecondSection extends StatelessWidget {
  const HomeSecondSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(AssetsData.offer),
        SizedBox(
          height: 30.h,
        ),
        Text(
          'Categories',
          style: Styles.textStyle18,
        ),
        SizedBox(
          height: 15.h,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (
                  ){
                 CoursesCubit.get(context).fetchLibraryCourses();
                navigatorPush(context,const CoursesScreen());
              },
              child: const Text(
                'library',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                ),
              ),
            ),
            InkWell(
              onTap: (){
                CoursesCubit.get(context).fetchOnlineCourses();
                navigatorPush(context,const CoursesScreen());
              },
              child: const Text(
                'Online',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                ),
              ),
            ),
            InkWell(
              onTap: (){
                navigatorPush(context,const CoursesScreen());
              },
              child: const Text(
                'Training',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                ),
              ),
            ),

          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Text(
          'Popular Courses',
          style: Styles.textStyle18,
        ),
      ],
    );
  }
}

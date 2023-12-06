import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_task/core/utils/assets.dart';
import 'package:lms_task/features/courses/presentation/manager/courses_cubit.dart';
import '../../../../../core/constant.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/shimmer.dart';

class CoursesListViewItem extends StatelessWidget {
  const CoursesListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoursesCubit, CoursesState>(
      builder: (context, state) {
        if(state is CoursesSuccessState) {
          return Container(
          height: 130.h,
          width: 360.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset(
              AssetsData.notify,
              width: 130.w,
              height: 130.h,
            ),
            SizedBox(
              width: 14.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4.w,
                ),
                Row(
                  children: [
                    Text(
                      'Graphic Design',
                      style: TextStyle(
                        color: const Color(0xffFF6B00),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      width: 68,
                    ),
                    Icon(
                      Icons.bookmark_outline,
                      size: 20.r,
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  state.specificCoursesModel.data![0].courseCategory!,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: const Color(0xff202244)),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  state.specificCoursesModel.data![0].price!,
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Color(0xffFAC025),
                    ),
                    Text(
                      state.specificCoursesModel.data![0].review!,
                      style:
                      TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Text(
                      '${state.specificCoursesModel.data![0].totalEnrolled!} Std',
                      style:
                      TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w800),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              width: 20.w,
            ),
          ]),
        );
        }
        else if(
        state is CoursesErrorState
        ){
         return  CustomErrorWidget(errorMessage:state.errorMessage,);
        }
        else {
          return  shimmerCoursesListViewItem();
        }
      },
    );
  }
}

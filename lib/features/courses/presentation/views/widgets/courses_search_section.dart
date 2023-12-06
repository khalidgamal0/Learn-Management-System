import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_task/core/widgets/custom_error_widget.dart';
import '../../../../../core/constant.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../core/widgets/shimmer.dart';
import '../../manager/courses_cubit.dart';

class CoursesSearchSection extends StatelessWidget {
  const CoursesSearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoursesCubit, CoursesState>(
      builder: (context, state) {
        if (state is CoursesSuccessState) {
          return Column(
            children: [
              const CustomTextFormField(
                prefix: Icons.search,
                hintText: 'search for',
                suffix: Icons.display_settings_outlined,
                suffixColor: kPrimaryColor,
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                children: [
                  Text(
                    'Result for ',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: kSecondaryColor),
                  ),
                  Text(
                    state.specificCoursesModel.data![1].courseCategory!,
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor),
                  ),
                  const Spacer(),
                  Text(
                    '${state.specificCoursesModel.total!} Founds',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor),
                  ),
                ],
              ),
            ],
          );
        } else if (state is CoursesErrorState) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return shimmerCoursesResultRow();

        }
      },
    );
  }
}

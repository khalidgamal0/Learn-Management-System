import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant.dart';

class CoursesAppBar extends StatelessWidget {
  const CoursesAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: kSecondaryColor,
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          'Online Courses',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 21.sp,
            color: kSecondaryColor,
          ),
        ),
      ],
    );
  }
}

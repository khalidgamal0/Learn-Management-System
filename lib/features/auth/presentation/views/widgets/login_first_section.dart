import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_task/core/utils/assets.dart';

class LoginFirstSection extends StatelessWidget {
  const LoginFirstSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Image.asset(AssetsData.logo)),
        SizedBox(
          height: 30.h,
        ),
        const Text(
          'Let’s Sign In.!',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        const Text(
          'Login to Your Account to Continue your Courses',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
      ],
    );
  }
}

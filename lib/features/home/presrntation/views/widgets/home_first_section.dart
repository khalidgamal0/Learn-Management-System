import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class HomeFirstSection extends StatelessWidget {
  const HomeFirstSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          'Hi, ALEX',
          style: Styles.textStyle18.copyWith(fontSize: 24),
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'What Would you like to learn Today?\n Search Below.',
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    height: 1.6,
                    color: const Color(0xff545454)),
              ),
            ),
            Image.asset(AssetsData.notify)
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        const CustomTextFormField(
          prefix: Icons.search,
          hintText: 'search for',
          suffix: Icons.display_settings_outlined,
          suffixColor: kPrimaryColor,
        ),
      ],
    );
  }
}

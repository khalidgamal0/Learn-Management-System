import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'courses_list_view_item.dart';

class CoursesListView extends StatelessWidget {
  const CoursesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) => const CoursesListViewItem(),
          separatorBuilder: (context, index) => SizedBox(
            height: 15.h,
          ),
          itemCount: 15),
    );
  }
}

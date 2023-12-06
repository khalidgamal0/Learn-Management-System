import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

Widget shimmerHomeGridViewItem() {
  return Shimmer.fromColors(
    baseColor: Colors.grey[300]!,
    highlightColor: Colors.grey[100]!,
    child: Container(
      padding: const EdgeInsets.all(5),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 150, // Set a fixed height for the shimmering image
            color:
                Colors.white, // Set a background color for the shimmering image
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100, // Set a fixed width for the shimmering text
                height: 16,
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_outline),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            height: 16,
            color: Colors.white,
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 60, // Set a fixed width for the shimmering text
                height: 16,
                color: Colors.white,
              ),
              const Icon(
                Icons.star,
                color: Color(0xffFAC025),
              ),
              Container(
                width: 40, // Set a fixed width for the shimmering text
                height: 16,
                color: Colors.white,
              ),
              SizedBox(width: 40.w),
              Container(
                width: 80, // Set a fixed width for the shimmering text
                height: 16,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}


Widget shimmerCoursesListViewItem() {
  return Shimmer.fromColors(
    baseColor: Colors.grey[300]!,
    highlightColor: Colors.grey[100]!,
    child: Container(
      height: 130.h,
      width: 360.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 130.w,
            height: 130.h,
            color: Colors.white, // Set a background color for the shimmering image
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
                  Container(
                    width: 100, // Set a fixed width for the shimmering text
                    height: 12,
                    color: Colors.white,
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
              Container(
                width: 150, // Set a fixed width for the shimmering text
                height: 16,
                color: Colors.white,
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 100, // Set a fixed width for the shimmering text
                height: 15,
                color: Colors.white,
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 20, // Set a fixed width for the shimmering icon
                    height: 20,
                    color: Colors.white,
                  ),
                  Container(
                    width: 50, // Set a fixed width for the shimmering text
                    height: 12,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  Container(
                    width: 80, // Set a fixed width for the shimmering text
                    height: 12,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
    ),
  );
}


Widget shimmerCoursesResultRow() {
  return Shimmer.fromColors(
    baseColor: Colors.grey[300]!,
    highlightColor: Colors.grey[100]!,
    child: Row(
      children: [
        Text(
          'Result for ',
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: kSecondaryColor,
          ),
        ),
        Container(
          width: 150.w, // Set a fixed width for the shimmering text
          height: 18,
          color: Colors.white,
        ),
        const Spacer(),
        Container(
          width: 100.w, // Set a fixed width for the shimmering text
          height: 18,
          color: Colors.white,
        ),
      ],
    ),
  );
}

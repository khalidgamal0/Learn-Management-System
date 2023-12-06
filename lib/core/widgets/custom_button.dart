import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.buttonName,
      this.onPressed,
       this.height,
       this.width=double.infinity,
       this.radius, this.style,
      })
      : super(key: key);

  final String buttonName;
  final void Function()? onPressed;
  final double ?height;
  final double ?width;
  final double ?radius;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height ?? 66.h,
        width: width ?? double.infinity,

        decoration:  BoxDecoration(
          color: const Color(0xff0961F5),
          borderRadius: BorderRadius.circular(
          radius ?? 32.w,

        ),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
    );
  }
}

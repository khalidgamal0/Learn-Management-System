import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_task/features/home/presrntation/manger/home_cubit.dart';
import '../../../../../core/constant.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/shimmer.dart';

class HomeGridViewItem extends StatelessWidget {
  const HomeGridViewItem({
    super.key, required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if(state is PopularCoursesSuccessState) {
          return Container(
          padding: const EdgeInsets.all(5),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey,),
            borderRadius: BorderRadius.circular(20.r),

          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network('https://insrvs.com/${state.homeModel.data![0].image!}'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      state.homeModel.data![0].metaKeywords!,
                      style: TextStyle(
                        color: const Color(0xffFF6B00),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    IconButton(onPressed: () {},
                        icon: const Icon(Icons.bookmark_outline,)),
                  ],
                ),
                Text(
                  state.homeModel.data![0].metaDescription!,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: const Color(0xff202244)),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      state.homeModel.data![0].price!,
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    const Icon(
                      Icons.star,
                      color: Color(0xffFAC025),
                    ),
                    Text(
                      state.homeModel.data![index].review!,
                      style: TextStyle(
                          fontSize: 11.sp, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Text(
                        '${state.homeModel.data![index].totalEnrolled!} Std',
                      style: TextStyle(
                          fontSize: 11.sp, fontWeight: FontWeight.w800),
                    ),
                  ],
                )
              ]),
        );
        }
        else if(state is PopularCoursesErrorState){
          return CustomErrorWidget(errorMessage: state.errorMessage,);
        }else{
         return shimmerHomeGridViewItem();
        }
      },
    );
  }
}

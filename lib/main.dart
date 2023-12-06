import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_task/features/courses/presentation/manager/courses_cubit.dart';
import 'package:lms_task/features/home/presrntation/manger/home_cubit.dart';

import 'core/bloc_observer.dart';
import 'core/utils/network/dio.dart';
import 'features/courses/data/repo/course_repo_impl.dart';
import 'features/home/data/repo/home_repo_impl.dart';
import 'features/splach/splach_screen.dart';

void main() {
  DioHelper.init();
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => HomeCubit(HomeRepoImpl())..fetchPopularCourses()),
            BlocProvider(create: (context) => CoursesCubit(CoursesRepoImpl())),

          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: child,
          ),
        );
      },
      designSize: const Size(428,926),
      minTextAdapt: true,
      splitScreenMode: true,
      child: const SplashScreen(),
    );
  }
}

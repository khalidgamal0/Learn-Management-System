import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms_task/features/courses/data/model/model.dart';
import '../../data/repo/course_repo_impl.dart';

part 'courses_state.dart';

class CoursesCubit extends Cubit<CoursesState> {
  CoursesCubit(this.coursesRepoImpl) : super(CoursesInitial());

  static CoursesCubit get(context) => BlocProvider.of(context);
  final CoursesRepoImpl coursesRepoImpl;

  fetchLibraryCourses() async {
    emit(LibraryCoursesLoadingState());
    var result = await coursesRepoImpl.fetchLibraryCourse();
    result.fold((error) => emit(CoursesErrorState(error.toString())),
        (libraryCourse) => emit(CoursesSuccessState(libraryCourse)));
  }

  fetchOnlineCourses() async {
    emit(OnlineCoursesLoadingState());
    var result = await coursesRepoImpl.fetchOnlineCourse();
    result.fold((error) => emit(CoursesErrorState(error.toString())),
            (onlineCourse) => emit(CoursesSuccessState(onlineCourse)));
  }



}

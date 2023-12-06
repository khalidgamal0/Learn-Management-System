import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:lms_task/core/utils/errors/errors.dart';
import 'package:lms_task/features/courses/data/model/model.dart';
import '../../../../core/utils/network/dio.dart';
import 'courses_repo.dart';

class CoursesRepoImpl implements CoursesRepo{

  SpecificCoursesModel? specificCourses;

  @override
  Future<Either<Failure, SpecificCoursesModel>> fetchLibraryCourse()async {
    try {

      var data = await DioHelper.getData(
          endPoint:'api/get-all-courses');
      specificCourses=SpecificCoursesModel.fromJson(data.data);

      return right(specificCourses!);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, SpecificCoursesModel>> fetchOnlineCourse()async {
    try {

      var data = await DioHelper.getData(
          endPoint:'api/get-all-classes');
      specificCourses=SpecificCoursesModel.fromJson(data.data);

      return right(specificCourses!);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, SpecificCoursesModel>> fetchTrainingCourse()async {
    try {

      var data = await DioHelper.getData(
          endPoint:'api/bundle-subscription');
      specificCourses=SpecificCoursesModel.fromJson(data.data);

      return right(specificCourses!);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(e.toString()),
      );
    }
  }

}
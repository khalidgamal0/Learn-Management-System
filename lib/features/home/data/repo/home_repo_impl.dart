import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:lms_task/core/utils/errors/errors.dart';
import 'package:lms_task/features/home/data/model/model.dart';
import '../../../../core/utils/network/dio.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {

  PopularCoursesModel? courses;
  @override
  Future<Either<Failure, PopularCoursesModel>> fetchPopularCourse()async {
    try {

      var data = await DioHelper.getData(
          endPoint:'api/get-popular-courses');
      courses=PopularCoursesModel.fromJson(data.data);

      return right(courses!);
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
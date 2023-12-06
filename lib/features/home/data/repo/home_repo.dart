import 'package:dartz/dartz.dart';
import 'package:lms_task/features/home/data/model/model.dart';
import '../../../../core/utils/errors/errors.dart';

abstract class HomeRepo{

  Future<Either<Failure,PopularCoursesModel>>fetchPopularCourse();

}
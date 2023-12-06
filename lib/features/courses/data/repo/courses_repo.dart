import 'package:dartz/dartz.dart';
import 'package:lms_task/core/utils/errors/errors.dart';
import 'package:lms_task/features/courses/data/model/model.dart';

abstract class CoursesRepo{

  Future<Either<Failure, SpecificCoursesModel>> fetchLibraryCourse();
  Future<Either<Failure, SpecificCoursesModel>> fetchOnlineCourse();
  Future<Either<Failure ,SpecificCoursesModel>> fetchTrainingCourse();

}
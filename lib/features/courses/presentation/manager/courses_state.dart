part of 'courses_cubit.dart';

abstract class CoursesState {}

class CoursesInitial extends CoursesState {}

class LibraryCoursesLoadingState extends CoursesState {}
class OnlineCoursesLoadingState extends CoursesState {}
class TrainingCoursesLoadingState extends CoursesState {}

class CoursesSuccessState extends CoursesState {
  final SpecificCoursesModel specificCoursesModel;
  CoursesSuccessState(this.specificCoursesModel);
}
class CoursesErrorState extends CoursesState {
  final String errorMessage;
  CoursesErrorState(this.errorMessage);
}

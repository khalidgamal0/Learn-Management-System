part of 'home_cubit.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class PopularCoursesLoadingState extends HomeState {}

class PopularCoursesSuccessState extends HomeState {
   final PopularCoursesModel homeModel;

  PopularCoursesSuccessState(this.homeModel);
}

class PopularCoursesErrorState extends HomeState {
  final String errorMessage;

  PopularCoursesErrorState(this.errorMessage);
}

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/model/model.dart';
import '../../data/repo/home_repo_impl.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  static HomeCubit get(context) => BlocProvider.of<HomeCubit>(context);

  HomeCubit(this.homeRepoImpl) : super(HomeInitial());
  final HomeRepoImpl homeRepoImpl;

  Future<void> fetchPopularCourses() async {
    emit(PopularCoursesLoadingState());
    var result = await homeRepoImpl.fetchPopularCourse();
    result.fold((error) {
      emit(PopularCoursesErrorState(error.errorMessage));
    }, (courses) => emit(PopularCoursesSuccessState(courses)));
  }
}

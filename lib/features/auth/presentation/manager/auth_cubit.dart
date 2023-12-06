import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/network/dio.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(LoginInitialState());
  static  AuthCubit get(context) => BlocProvider.of<AuthCubit>(context);

  void userLogin({
    required String? email,
    required String? password,
  }) {
    emit(LoginLoadingState());
    DioHelper.postData(
        endPoint: 'api/login',
         data: {
          'email':email,
           'password':password,
         }).then((value){
      emit(LoginSuccessState());
    }).catchError((error){
      emit(LoginFailureState(error.toString()));

    });

  }

  IconData suffix =Icons.visibility_off_outlined;
  bool isPassword = true;
  void changePasswordVisibility(){
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility_off_outlined :  Icons.visibility_outlined;
    emit(ChangePasswordVisibility());
  }
}

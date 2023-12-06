part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class LoginInitialState extends AuthState {}

class LoginLoadingState extends AuthState {}

class LoginSuccessState extends AuthState {}

class LoginFailureState extends AuthState {
  final String error;

  LoginFailureState(this.error);

}

class ChangePasswordVisibility extends AuthState {}

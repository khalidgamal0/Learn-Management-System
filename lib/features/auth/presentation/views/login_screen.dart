import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_task/core/utils/functions/navigator_push.dart';
import 'package:lms_task/features/auth/presentation/manager/auth_cubit.dart';
import 'package:lms_task/features/auth/presentation/views/widgets/login_first_section.dart';
import 'package:lms_task/features/auth/presentation/views/widgets/login_form_section.dart';
import 'package:lms_task/features/home/presrntation/views/home_screen.dart';
import '../../../../core/widgets/toast.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    var emailController = TextEditingController();
    var passController = TextEditingController();
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is LoginSuccessState) {
            showToast(
                state: ToastStates.success, message: 'Login Successfully');
                navigatorPush(context,const HomeScreen());
          } else if (state is LoginFailureState) {
            showToast(state: ToastStates.success, message: state.error);
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 34.w),
                child: Form(
                  key: formKey,
                  child: Column(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const LoginFirstSection(),
                        LoginFormSection(emailController: emailController, passController: passController, formKey: formKey),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don\'t have an account?',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 14),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            const Text(
                              'SIGN UP',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 14,
                                  color: Colors.blue),
                            )
                          ],
                        )
                      ]),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_task/core/widgets/custom_text_form_field.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../manager/auth_cubit.dart';

class LoginFormSection extends StatelessWidget {
  const LoginFormSection({
    super.key,
    required this.emailController,
    required this.passController,
    required this.formKey,
  });

  final TextEditingController emailController;
  final TextEditingController passController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomTextFormField(
        controller: emailController,
        prefix: Icons.email_outlined,
        hintText: 'Email',
        validate: (value) {
          if (value!.isEmpty) {
            return 'password is too short';
          } else {
            return null;
          }
        },
      ),
      SizedBox(
        height: 20.h,
      ),
      CustomTextFormField(
        controller: passController,
        prefix: Icons.lock,
        isPassword: AuthCubit.get(context).isPassword,
        hintText: 'Password',
        suffix: AuthCubit.get(context).suffix,
        suffixPressed: () {
          AuthCubit.get(context).changePasswordVisibility();
        },
        validate: (value) {
          if (value!.isEmpty || value.length < 8) {
            return 'password is too short';
          } else {
            return null;
          }
        },
      ),
      SizedBox(
        height: 20.h,
      ),
      CustomButton(
        buttonName: 'Sign In',
        onPressed: () {
          if (formKey.currentState!.validate()) {
            AuthCubit.get(context).userLogin(
              email: emailController.text,
              password: passController.text,
            );
          }
        },
      ),
    ],);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_task/core/constant.dart';
import 'package:lms_task/core/utils/assets.dart';
import 'package:lms_task/core/utils/functions/navigator_push.dart';
import 'package:lms_task/features/auth/presentation/views/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      navigatorPush(context, const LoginScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding:  EdgeInsets.all(30.0.r),
        child: Center(
          child: Stack(
            alignment: Alignment.center,
              children: [
                Image.asset(AssetsData.splashShape),
                Image.asset(AssetsData.splashCircle),
                Image.asset(AssetsData.splashLogo),
          ]),
        ),
      ),
    );
  }
}

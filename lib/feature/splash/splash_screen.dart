import 'package:app_3/feature/splash/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_3/core/utils/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_3/core/functions/Navigations.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),(){
   pushTo(context, WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: SvgPicture.asset("assets/splash.svg"),
      ),
    );
  }
}
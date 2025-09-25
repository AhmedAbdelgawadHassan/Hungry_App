import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/core/constants/app_colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          Spacer(flex: 2,),
          Center(child: SvgPicture.asset('assets/logo/Hungry_.svg')),
          Spacer(flex: 3,),
          Image(image: AssetImage('assets/splash/image 1.png'))
        ],
      ),
    );
  }
}
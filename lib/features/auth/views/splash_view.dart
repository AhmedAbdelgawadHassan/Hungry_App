// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/root.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement( MaterialPageRoute(builder: (context){
        return Root();
      }));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          Spacer(flex: 2,),
          Center(child: SvgPicture.asset('assets/logo/Hungry.svg')),
          Spacer(flex: 3,),
          Image(image: AssetImage('assets/splash/image 1.png'))
        ],
      ),
    );
  }
}
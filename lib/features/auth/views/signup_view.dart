// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/auth/widgets/customAuthButton.dart';
import 'package:hungry/shared/custom_text.dart';
import 'package:hungry/shared/custom_textformfield.dart';

class SignupView extends StatelessWidget {
  SignupView({super.key});
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(
          context,
        ).unfocus(), // when click on any area of scaffold , the foucs on textformfield removed
        child: Scaffold(
          backgroundColor: AppColors.primaryColor,
          body: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                key: _formkey,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Gap(30),
                    SvgPicture.asset('assets/logo/Hungry_.svg'),
                    Gap(12),
                    CustomText(
                      text: 'Welcome Back, Discover The best fast food',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.5,
                    ),
                    Gap(80),
                    CustomTextformfield(
                      controller: namecontroller,
                      hintText: 'Name',
                      ispassword: false,
                    ),
                    Gap(12),
                    CustomTextformfield(
                      controller: passwordcontroller,
                      hintText: 'Email Address',
                      ispassword: false,
                    ),
                    Gap(12),
                      CustomTextformfield(
                      controller: emailcontroller,
                      hintText: 'password',
                      ispassword: true,
                    ),
                    Gap(12),
                      CustomTextformfield(
                      controller: confirmpasswordcontroller,
                      hintText: 'Comfirm password',
                      ispassword: true,
                    ),
                    Gap(65),
                   Customauthbutton(ontap: (){ if (_formkey.currentState!.validate()) {
                          // Navigator.push(context, MaterialPageRoute(
                          //   builder: (context){
                          //     return SignupView();
                          //   }));
                        }}, text: 'Sign Up')
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

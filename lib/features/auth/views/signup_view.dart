// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/auth/views/login_view.dart';
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
          backgroundColor: Colors.white,
          body: Center(
            child: Form(
              key: _formkey,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Gap(100),
                  SvgPicture.asset('assets/logo/Hungry.svg',color: AppColors.primaryColor,),
                  Gap(10),
                  CustomText(
                    text: 'Welcome Back, Discover The best fast food',
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.5,
                  ),
                 Expanded(
                   child: Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(top: 80),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                    ),
                     child: Column(
                      children: [
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
                       
                      Gap(65),
                     Customauthbutton(ontap: (){ if (_formkey.currentState!.validate()) {
                          }}, text: 'Sign Up',
                           borderColor: Colors.white,
                            textFieldColor: AppColors.primaryColor,
                            textColor: Colors.white,),
                          Gap(20),

                           Customauthbutton(ontap: (){  {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context){
                                return LoginView();
                              }));
                          }}, text: 'Already Have An Account')
                      ],
                     ),
                   ),
                 )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

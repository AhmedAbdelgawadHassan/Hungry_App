import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/auth/widgets/custom_user_textField.dart';
import 'package:hungry/shared/custom_text.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();

  @override
  void initState() {
    //// Give intails values for each textfield,
    name.text = 'Ahmed Abdelgawad';
    email.text = 'ahmedabdelgawad.developer@gmail.com';
    address.text = 'Omranai Haram Giza';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings, color: Colors.white),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Gap(10),
              Center(
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white, width: 3),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Gap(35),
              CustomUserTextfield(controller: name, label: 'Name'),
              Gap(25),
              CustomUserTextfield(controller: email, label: 'Email'),
              Gap(25),
              CustomUserTextfield(controller: address, label: "Address"),
              Gap(20),
              Divider(color: Colors.white, endIndent: 50, indent: 30),
              Gap(35),
              ListTile(
                onTap: () {
                  //when clicking on all ListTile
                  setState(() {});
                },
                contentPadding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                ),
                tileColor: Colors.white,
                leading: Image(
                  image: AssetImage('assets/icons/visa.png'),
                  width: 50,
                ),
                title: Text(
                  "Debit card",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text(
                  '**** **** **** 0505',
                  style: TextStyle(color: Colors.black),
                ),
                trailing: CustomText(
                  text: 'Default',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          height: 75,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /////Edit Profile Button
              InkWell(
                onTap: () {},
                child: Container(
                  width: 170,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomText(text: 'Edit Profile', color: Colors.white),
                      Gap(10),
                      Icon(Icons.edit, color: Colors.white),
                    ],
                  ),
                ),
              ),
              ///// Log out Button
              InkWell(
                onTap: () {},
                child: Container(
                  width: 160,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.primaryColor),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomText(text: 'Logout', color: AppColors.primaryColor),
                      Gap(10),
                      Icon(Icons.logout, color: AppColors.primaryColor),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

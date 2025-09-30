import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/auth/views/profile_view.dart';
import 'package:hungry/features/cart/view/cart_view.dart';
import 'package:hungry/features/home/views/home_view.dart';
import 'package:hungry/features/orderHistory/views/orderHistory_view.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}


class _RootState extends State<Root> {
    late PageController controller ;
  late List<Widget>screens;
  int currentscreen=0;
  @override
  void initState() {
    controller=PageController(initialPage: currentscreen);
    screens=[
    HomeView(),
    CartView(),
    OrderhistoryView(),
    ProfileView()
  ];


    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: PageView(
  controller: controller,
  children: screens,
  physics: NeverScrollableScrollPhysics(),  //never scroll by 
),
bottomNavigationBar: Container(
  decoration: BoxDecoration(
    color: AppColors.primaryColor,
    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))

  ),
  padding: EdgeInsets.all(10),
  child: BottomNavigationBar(
    onTap: (value) {
      setState(() {
        currentscreen=value;
        controller.jumpToPage(value);
      });
    },
    elevation: 0,
    backgroundColor: AppColors.primaryColor,
    type: BottomNavigationBarType.fixed,
    currentIndex: currentscreen,
    iconSize: 22,
    unselectedFontSize: 12,
    selectedFontSize: 15,
    selectedIconTheme: IconThemeData(size: 26),
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey.shade500,
    selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
    items: [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: 'Home'),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart),label: 'Cart'),
    BottomNavigationBarItem(icon: Icon(Icons.local_restaurant_outlined),label: 'Orders'),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled),label: 'Profile'),
  
  
  
  ]),
),
    );
  
  }
}
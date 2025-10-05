import 'package:flutter/material.dart';

class CustomUserTextfield extends StatelessWidget {
  const CustomUserTextfield({super.key, required this.controller, required this.label});
  final TextEditingController controller;
  final String label;

  @override
  Widget build(BuildContext context) {
    return  TextField(
                controller:controller ,
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  labelText: label,
                  labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,width: 1.5),
                    borderRadius: BorderRadius.circular(15)
                  ),
                   focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,width: 1.5),
                    borderRadius: BorderRadius.circular(15),
                  
                  ),
                ),
              );
  }
}
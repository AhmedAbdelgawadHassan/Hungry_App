import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextformfield extends StatefulWidget {
  const CustomTextformfield({super.key, required this.hintText, required this.ispassword,required this.controller, });
  final String hintText;
  final bool ispassword ;
  final TextEditingController controller;

  @override
  State<CustomTextformfield> createState() => _CustomTextformfieldState();
}

class _CustomTextformfieldState extends State<CustomTextformfield> {
  late bool _obsecureText;
  @override
  void initState() {
    _obsecureText=widget.ispassword;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:widget.controller ,
      cursorColor: Colors.black,
      cursorHeight: 20,
    decoration: InputDecoration(
      suffixIcon:widget.ispassword==true? GestureDetector(
        onTap: () {
          setState(() {
            _obsecureText =! _obsecureText;
          });
        },
        child: Icon(CupertinoIcons.eye,size:27 ,)):null,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black,width: 1.5),
        borderRadius: BorderRadius.circular(12),
      ),
       focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black,width: 1.5),
        borderRadius: BorderRadius.circular(12),
      ),
     
      hintText: widget.hintText,
      hintStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.black
      ),
      fillColor: Colors.white,
      filled: true,
      contentPadding: EdgeInsets.symmetric(vertical: 18,horizontal: 10),
    ),
    validator: (value) {
      if(value==null||value.isEmpty)
      {
        return 'Please Fill ${widget.hintText}';
      }
      return null;
    },
    obscureText: _obsecureText,
    
    );
  }
}
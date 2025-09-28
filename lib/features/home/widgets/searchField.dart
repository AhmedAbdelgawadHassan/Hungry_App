import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchfield extends StatelessWidget {
  const Searchfield({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material(
                      elevation: 2,
                      shadowColor: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(15),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          prefixIcon: Icon(
                            CupertinoIcons.search,
                            color: Colors.black,
                            size: 30,
                          ),
                          hintText: 'Search for food',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      )
                    );
  }
}
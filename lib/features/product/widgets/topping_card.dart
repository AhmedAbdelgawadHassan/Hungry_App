import 'package:flutter/material.dart';

class ToppingCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback onTap;

  const ToppingCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120,
          height:70,
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          decoration: BoxDecoration(
          border: Border.all(color: Colors.black45,width: 0.2),
             color: Colors.transparent,
             boxShadow: [BoxShadow(
              color: const Color.fromARGB(135, 244, 244, 244),
             )],
             image: DecorationImage(
              image: AssetImage(imageUrl,),fit: BoxFit.contain),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12))),
        ),
         Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: 120,
          height: 60,
            decoration: BoxDecoration(
              color: Color(0xff3B2E2E),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: onTap,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.red,
                    child: Icon(Icons.add, color: Colors.white, size: 20),
                  ),
                )
              ],
            ),
          )
       
      ],
    );
  }
}

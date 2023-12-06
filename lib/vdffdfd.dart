import 'package:flutter/material.dart';
class CustomCircularAvatar extends StatelessWidget {
  final double radius;
  final String? middleText;
  final List<BoxShadow>? boxShadow;
  const CustomCircularAvatar({super.key, required this.radius, this.middleText, this.boxShadow});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: radius * 2,
        width: radius * 2,
        decoration: BoxDecoration(
          color: Color(0xffbeadfa),
          // border: Border.all(color: Colors.grey, width: 1,),
          borderRadius: BorderRadius.circular(radius),
          boxShadow: [
            BoxShadow(
              color: Colors.black54, // Shadow color
              offset: Offset(2, 6), // Offset in the right and bottom direction
              blurRadius: 5, // Spread radius
              spreadRadius: 0, // Expansion radius
            ),
          ],
        ),
        child: middleText == null? null :  Center(child: Text(middleText!,style: TextStyle(fontSize: 8,color: Colors.white),))
    );
  }
}

import 'package:flutter/material.dart';


class ContainerTextField extends StatelessWidget {
  final String text;
  final double contentPadding;
  final double? fontSize;
  final double? boxWidth;
  final double? boxHeight;
  final FontWeight? fontWeight;
  final double borderRadius;
  final Color borderColor;
  const ContainerTextField({super.key,required this.borderColor, required this.text, required this.contentPadding, required this.borderRadius, this.fontSize, this.boxWidth = 95, this.boxHeight = 25, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: boxWidth,
        height: boxHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: borderColor),
        ),
        child:  Center(
          child: FittedBox(
            fit: BoxFit.fill,
            child: Text(text,
              style: TextStyle(
                letterSpacing: 1,
                fontSize: fontSize,
                color: Colors.blue,
                fontWeight: fontWeight,
              ),),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomtxtField extends StatelessWidget {
  String? hintTxt;
   CustomtxtField({super.key,this.hintTxt});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: MediaQuery.of(context).size.width-40,
      child: TextField(
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(

          hintText: hintTxt??'Enter your text',
          hintStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: Colors.grey, // Change the color to your desired color
            ),
          ),
        ),
      ),
    );

  }
}

import 'package:flutter/material.dart';

class Droupdown extends StatefulWidget {
  const Droupdown({super.key});

  @override
  State<Droupdown> createState() => _DroupdownState();
}

class _DroupdownState extends State<Droupdown> {
  String selectedValue = 'Choose privacy';
  bool isDropdownOpen = false;

  @override
  Widget build(BuildContext context) {
    return   Stack(
      clipBehavior: Clip.none,
     // mainAxisAlignment: MainAxisAlignment.center,
      children: [


        GestureDetector(
          onTap: () {
            setState(() {
              isDropdownOpen = !isDropdownOpen;
            });
          },
          child: Container(
            height: 48,
            width:  MediaQuery.of(context).size.width-40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey, // Set the border color to gray
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedValue,
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(
                    isDropdownOpen
                        ? Icons.arrow_drop_up
                        : Icons.arrow_drop_down,
                  ),
                ],
              ),
            ),
          ),
        ),
        if (isDropdownOpen)
          AlertDialog(
            actions: [
              Container(
                margin: EdgeInsets.only(top: 30),
                width:  MediaQuery.of(context).size.width-100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: null,
                  borderRadius: BorderRadius.circular(10),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1.5,
                      spreadRadius: 1,
                      offset: Offset(0,0),
                    ),
                  ],
                ),
                child: Positioned(
                  top: 200,
                  left: 60,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedValue = 'Public';
                                isDropdownOpen = false;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffE6E7E9),
                                      ),
                                      child: Icon(Icons.public_sharp,color: Colors.black87,),
                                    ),
                                    SizedBox(width: 5,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Public",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            )
                                        ),
                                        SizedBox(
                                          width: 180,
                                          child: Text(
                                              "Anyone can see who’s in the group and what they post.",
                                              maxLines: 2,
                                              style: TextStyle(

                                                fontSize: 12,

                                                fontWeight: FontWeight.w400,
                                              )
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 2,
                              width: MediaQuery.of(context).size.width-120,
                              color: Colors.grey,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedValue = 'Privet';
                                isDropdownOpen = false;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffE6E7E9),
                                    ),
                                    child: Icon(Icons.public_sharp,color: Colors.black87,),
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          "Private",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          )
                                      ),
                                      SizedBox(
                                        width: 180,
                                        child: Text(
                                            "Only members can see who’s in the group and what they post.",
                                            maxLines: 2,
                                            style: TextStyle(

                                              fontSize: 12,

                                              fontWeight: FontWeight.w400,
                                            )
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                          right: 0,
                          top: -55,
                          child: Icon(Icons.arrow_drop_up,size: 100,color: Colors.white,
                            shadows: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: Offset(-1, -4),
                                blurRadius: 8,
                                spreadRadius: 1,
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}

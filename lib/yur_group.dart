import 'package:flutter/material.dart';
import 'package:tesz2/groupwigets.dart';

class YourGroup extends StatefulWidget {
  const YourGroup({super.key});

  @override
  State<YourGroup> createState() => _YourGroupState();
}

class _YourGroupState extends State<YourGroup> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(top: 100),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
          color: Colors.white,
        ),
        child:  SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10,right: 20,left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Your Crated Group",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )
                    ),
                    Text(
                        "See All >",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff0961F5)
                        )
                    )


                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:15, right: 20,left: 20),
                height: 1,
                color: Colors.grey,
              ),

              GroupListWidgets(Listlength: 2,),
              Container(
                margin: EdgeInsets.only(top:15, right: 20,left: 20),
                height: 1,
                color: Colors.grey,
              ),
              Container(
                margin: EdgeInsets.only(top: 20,right: 20,left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Groups you’ve joined",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )
                    ),
                    Text(
                        "See All >",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff0961F5)
                        )
                    )


                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:15, right: 20,left: 20),
                height: 1,
                color: Colors.grey,
              ),
              GroupListWidgets(Listlength: 3,),
              SizedBox(height: 40,)







            ],
          ),
        ),
      ),
    );
  }
}

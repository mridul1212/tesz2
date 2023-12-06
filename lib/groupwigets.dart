import 'package:flutter/material.dart';

class GroupListWidgets extends StatelessWidget {
  String? ClgName;
  String? activeTime;
  double Listlength;
   GroupListWidgets({super.key,this.ClgName,this.activeTime,required this.Listlength});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 102*Listlength??1,// 3=lenght of List

      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 8, right: 20,left: 20),
              height: 70,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width-120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                               ' ${ClgName??"HSC Batch 2022"}',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                )
                            ),
                            Text(
                                '${activeTime??'Last Active 2 hours ago'}',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                )
                            )
                          ],

                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(0xffE8F1FF),
                          child: IconButton(onPressed: (){},
                              disabledColor: Colors.grey,
                              color: Colors.blueAccent,


                              icon: Icon(Icons.arrow_forward_ios,color: Colors.blueAccent, )),
                        )                              ],
                    ),
                  ),
                ],

              ),
            ),
            Container(
              margin: EdgeInsets.only(top:15, right: 20,left: 20),
              height: 1,
              color: Colors.grey,
            ),
          ],
        ),
        itemCount: 3,
      ),
    );
  }
}

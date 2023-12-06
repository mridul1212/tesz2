import 'package:flutter/material.dart';
import 'package:tesz2/custom_text%20field.dart';
import 'package:tesz2/dfdffg.dart';
import 'package:tesz2/droupdown/droupdown.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'groupwigets.dart';

class CreateGroupPage extends StatefulWidget {
  const CreateGroupPage({super.key});

  @override
  State<CreateGroupPage> createState() => _CreateGroupPageState();
}

class _CreateGroupPageState extends State<CreateGroupPage> with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return   SafeArea(

      child: Scaffold(


        backgroundColor: Color(0xFF3428B5).withOpacity(0.9),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(height: 5,),


            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,

                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),                  child: ListView(
                  shrinkWrap: true,

                  children: [
                    SizedBox(height: 20,),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text(
                           'Chapter list',
                           style: TextStyle(
                             color: Color(0xFF202244),
                             fontSize: 18,

                             fontWeight: FontWeight.w700,
                             height: 0,
                           ),
                         ),
                         Container(
                           width: 155,
                           height: 28,
                           padding: EdgeInsets.only(left: 5,top: 3),
                           decoration: ShapeDecoration(
                             shape: RoundedRectangleBorder(
                               side: BorderSide(width: 1, color: Color(0xFF828282)),
                               borderRadius: BorderRadius.circular(8),
                             ),
                           ),
                           child: Text('Search..'),
                         )
                       ],
                     ),

                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ListView.builder(

                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => Container(
                          height: 110,
                          child: TimelineTile(
                            isFirst: index==0?true:false,
                            isLast:index==9?true: false,
                            afterLineStyle: LineStyle(
                                color: Color(0xffF2994A),
                              thickness: 2
                            ),

                            beforeLineStyle: LineStyle(color: Color(0xffF2994A),
                            thickness: 2
                            ),
                            alignment: TimelineAlign.start,


                            indicatorStyle: IndicatorStyle(
                              indicator: Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.5,

                                    color: Color(0xFF27AE60),
                                  ),

                                  shape: BoxShape.circle,
                                color: Colors.white
                                //  color: Color(0xFF27AE60),
                                ),
                                child: CircleAvatar(
                                    radius: 17,
                                    backgroundColor: Color(0xFF27AE60),
                                    child: Icon(Icons.check,color: Colors.white,)),
                              ),
                              width: 40,
                              height: 40,
                            //  iconStyle: IconStyle(iconData: Icons.check,color: Colors.white,),
                              padding: EdgeInsets.symmetric(vertical: 10),


                            ),
                            endChild: Container(

                              height: 110,
                              margin: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                              padding: EdgeInsets.only(left: 10,right: 10,top: 9,bottom: 9),
                              decoration: ShapeDecoration(
                                color: Color(0xFFF5F9FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x14000000),
                                    blurRadius: 12,
                                    offset: Offset(0, 18),
                                    spreadRadius: -11,
                                  )
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '1st Paper - Chapter 1',
                                        style: TextStyle(
                                          color: Color(0xFFAA78ED),
                                          fontSize: 13,

                                          fontWeight: FontWeight.w400,

                                        ),
                                      ),
                                      SizedBox(

                                        child: Text(
                                          'Chapter Name',
                                          maxLines: 2,
                                          style: TextStyle(
                                            color: Color(0xFF202244),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(31),
                                              ),
                                            ),
                                            child: Text(
                                              'Class',
                                              style: TextStyle(
                                                color: Color(0xFF202244),
                                                fontSize: 11,

                                                fontWeight: FontWeight.w400,

                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Container(

                                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(31),
                                              ),
                                            ),
                                            child: Text(
                                              'Notes',
                                              style: TextStyle(
                                                color: Color(0xFF202244),
                                                fontSize: 11,

                                                fontWeight: FontWeight.w400,

                                              ),
                                            ),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.blue,
                                    child: Icon(Icons.play_arrow,size:20,color: Colors.white,),
                                  )

                                ],
                              ),
                            ),

                          ),
                        ),
                        itemCount: 10,


                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

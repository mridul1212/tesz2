import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:tesz2/text.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slidable Example',
      home:  CreateGroupPage(),
      // SafeArea(
      //   child: Scaffold(
      //
      //     backgroundColor: Color(0xFF3428B5).withOpacity(0.9),
      //     body: Column(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         SizedBox(height: 10,),
      //         SizedBox(
      //           width: 335,
      //           child: Text(
      //             'ACS Engineering Admission Private Batch 2023',
      //             style: TextStyle(
      //               color: Colors.white,
      //               fontSize: 20,
      //
      //               fontWeight: FontWeight.w500,
      //
      //             ),
      //           ),
      //         ),
      //         SizedBox(height: 15,),
      //         SizedBox(
      //           width: 336,
      //           child: Text(
      //             'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit',
      //             style: TextStyle(
      //               color: Color(0xFFE0E0E0),
      //               fontSize: 14,
      //
      //               fontWeight: FontWeight.w400,
      //
      //             ),
      //           ),
      //         ),
      //         SizedBox(height: 15,),
      //         Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 20),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //               Row(
      //                 children: [
      //                   Container(
      //                     width: 24,
      //                     height: 24,
      //                     decoration: ShapeDecoration(
      //                       image: DecorationImage(
      //                         image: NetworkImage("https://via.placeholder.com/24x24"),
      //                         fit: BoxFit.cover,
      //                       ),
      //                       shape: OvalBorder(
      //                         side: BorderSide(
      //                           width: 1,
      //                           strokeAlign: BorderSide.strokeAlignCenter,
      //                           color: Colors.white,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                   SizedBox(width: 8,),
      //                   Text.rich(
      //                     TextSpan(
      //                       children: [
      //                         TextSpan(
      //                           text: 'By',
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 16,
      //                             fontFamily: 'Mulish',
      //                             fontWeight: FontWeight.w300,
      //                             height: 0.09,
      //                           ),
      //                         ),
      //                         TextSpan(
      //                           text: ' ',
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 16,
      //                             fontFamily: 'Mulish',
      //                             fontWeight: FontWeight.w400,
      //                             height: 0.09,
      //                           ),
      //                         ),
      //                         TextSpan(
      //                           text: 'Amit',
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 16,
      //                             fontFamily: 'Mulish',
      //                             fontWeight: FontWeight.w600,
      //                             height: 0.09,
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //
      //                 ],
      //               ),
      //               Row(
      //                 children: [
      //                   Container(
      //                     width: 16,
      //                     height: 16,
      //                     decoration: ShapeDecoration(
      //                       image: DecorationImage(
      //                         image: NetworkImage("https://via.placeholder.com/16x16"),
      //                         fit: BoxFit.fill,
      //                       ),
      //                       shape: OvalBorder(
      //                         side: BorderSide(width: 0.80, color: Colors.white),
      //                       ),
      //                     ),
      //                   ),
      //                   SizedBox(width: 10,),
      //                   Text(
      //                     '+ 1.3k Student Completed',
      //                     style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 11,
      //                       fontFamily: 'Mulish',
      //                       fontWeight: FontWeight.w600,
      //                       height: 0.14,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ),
      //         SizedBox(height: 20,),
      //
      //
      //         Expanded(
      //           child: Container(
      //             width: MediaQuery.of(context).size.width,
      //
      //             decoration: ShapeDecoration(
      //               color: Colors.white,
      //               shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.only(
      //                   topLeft: Radius.circular(20),
      //                   topRight: Radius.circular(20),
      //                 ),
      //               ),
      //             ),                  child: ListView(
      //               shrinkWrap: true,
      //
      //               children: [
      //                 SizedBox(height: 50,),
      //                 Padding(padding: EdgeInsets.symmetric(horizontal: 20),
      //                  child: Row(
      //                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                    children: [
      //                      Text(
      //                        'Chapter list',
      //                        style: TextStyle(
      //                          color: Color(0xFF202244),
      //                          fontSize: 18,
      //
      //                          fontWeight: FontWeight.w700,
      //                          height: 0,
      //                        ),
      //                      ),
      //                      Container(
      //                        width: 155,
      //                        height: 28,
      //                        padding: EdgeInsets.only(left: 5,top: 3),
      //                        decoration: ShapeDecoration(
      //                          shape: RoundedRectangleBorder(
      //                            side: BorderSide(width: 1, color: Color(0xFF828282)),
      //                            borderRadius: BorderRadius.circular(8),
      //                          ),
      //                        ),
      //                        child: Text('Search..'),
      //                      )
      //                    ],
      //                  ),
      //
      //                 ),
      //                 SizedBox(height: 20,),
      //                 ListView.builder(
      //                   shrinkWrap: true,
      //                   physics: NeverScrollableScrollPhysics(),
      //                   itemBuilder: (context, index) => Container(
      //
      //                     height: 100,
      //                     margin: EdgeInsets.only(left: 20,right: 20,bottom: 20),
      //                     padding: EdgeInsets.only(left: 10,right: 10,top: 9,bottom: 9),
      //                     decoration: ShapeDecoration(
      //                       color: Color(0xFFF5F9FF),
      //                       shape: RoundedRectangleBorder(
      //                         borderRadius: BorderRadius.circular(16),
      //                       ),
      //                       shadows: [
      //                         BoxShadow(
      //                           color: Color(0x14000000),
      //                           blurRadius: 12,
      //                           offset: Offset(0, 18),
      //                           spreadRadius: -11,
      //                         )
      //                       ],
      //                     ),
      //                     child: Row(
      //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                       crossAxisAlignment: CrossAxisAlignment.center,
      //                       children: [
      //                         Row(
      //                           mainAxisAlignment: MainAxisAlignment.start,
      //                           crossAxisAlignment: CrossAxisAlignment.start,
      //                           children: [
      //                             Container(
      //                               width: 82,
      //                               height: 82,
      //                               decoration: ShapeDecoration(
      //                                 image: DecorationImage(
      //                                   image: NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
      //                                   fit: BoxFit.fill,
      //                                 ),
      //                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      //                               ),
      //                             ),
      //                             SizedBox(width: 10,),
      //                             Column(
      //                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                               crossAxisAlignment: CrossAxisAlignment.start,
      //                               children: [
      //                                 Text(
      //                                   '1st Paper - Chapter 1',
      //                                   style: TextStyle(
      //                                     color: Color(0xFFAA78ED),
      //                                     fontSize: 13,
      //
      //                                     fontWeight: FontWeight.w400,
      //
      //                                   ),
      //                                 ),
      //                                 SizedBox(
      //                                   width: 171,
      //                                   child: Text(
      //                                     'Chapter Name',
      //                                     maxLines: 2,
      //                                     style: TextStyle(
      //                                       color: Color(0xFF202244),
      //                                       fontSize: 18,
      //                                       fontWeight: FontWeight.w600,
      //                                     ),
      //                                   ),
      //                                 ),
      //                                 Row(
      //                                   children: [
      //                                     Row(
      //                                       children: [
      //                                         Icon(Icons.book,size: 10,),
      //                                         Text(
      //                                           '14 Classes',
      //                                           style: TextStyle(
      //                                             color: Color(0xFF202244),
      //                                             fontSize: 11,
      //                                             fontFamily: 'Mulish',
      //                                             fontWeight: FontWeight.w500,
      //                                             height: 0,
      //                                           ),
      //                                         )
      //                                       ],
      //                                     ),
      //                                     SizedBox(width: 10,),
      //                                     Row(
      //                                       children: [
      //                                         Icon(Icons.book,size: 10,),
      //                                         Text(
      //                                           '14 Classes',
      //                                           style: TextStyle(
      //                                             color: Color(0xFF202244),
      //                                             fontSize: 11,
      //                                             fontFamily: 'Mulish',
      //                                             fontWeight: FontWeight.w500,
      //                                             height: 0,
      //                                           ),
      //                                         )
      //                                       ],
      //                                     ),
      //                                   ],
      //                                 ),
      //
      //
      //                               ],
      //                             ),
      //                           ],
      //                         ),
      //                         CircleAvatar(
      //                           radius: 12,
      //                           backgroundColor: Colors.blue,
      //                           child: Icon(Icons.arrow_forward_rounded,color: Colors.white,),
      //                         )
      //
      //                       ],
      //                     ),
      //                   ),
      //                   itemCount: 10,
      //
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}


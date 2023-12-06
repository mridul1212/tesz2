import 'package:flutter/material.dart';

class GeneralQuestion extends StatefulWidget {
  const GeneralQuestion({super.key});

  @override
  State<GeneralQuestion> createState() => _GeneralQuestionState();
}

class _GeneralQuestionState extends State<GeneralQuestion> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('Create Croup'),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 80,),


          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
            color: Colors.white,

          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return  Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.yellowAccent
                      ),
                      child: ExpansionTile(
                        title: Text('Tile 1'),
                        children: [
                          ListTile(
                            title: Text('Subitem 1.1'),
                          ),
                          ListTile(
                            title: Text('Subitem 1.2'),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: 10,

                ),
                Container(
                   width: 210,
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFF0961F5), Color(0xFF3428B5)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(34),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x1E281CAE),
                        blurRadius: 22,
                        offset: Offset(0, 15),
                        spreadRadius: -26,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
              ],
            )
          ),


        ),
      ),

    );
  }
}

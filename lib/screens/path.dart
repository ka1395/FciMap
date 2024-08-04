import 'package:flutter/material.dart';

class PathScreen extends StatefulWidget {
  const PathScreen({super.key});

  @override
  State<PathScreen> createState() => _PathScreenState();
}

class _PathScreenState extends State<PathScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      //its a row with a column
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Container(
                        height: 300,
                        width: 300,
                        child: Image.asset('assets/images/01.gif'),
                      ),

                      SizedBox(
                    height: 0.0,
                  ),
            Row(
              children:[
                 Text(""      , 
                 style: TextStyle(
                         // color: Colors.black26,
                          //color: Color(0xff2e386b),
                           color: Color.fromARGB(255, 13, 73, 194),
                          fontSize: 30,
                           fontWeight: FontWeight.bold,
                         ),
                 ),
              ],
              ),
              ],
            ),
            // Center(
            //             child:
            //            Container(
            //             height: 180,
            //             child: Image.asset('assets/images/welcom.png'),
            //           ),
            //           ),

          ],
        ),
      ),
    );
  }
}
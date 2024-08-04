import 'package:flutter/material.dart';

class PathScreen extends StatelessWidget {
  const PathScreen({super.key, required this.pathImage});
  final String pathImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      //its a row with a column
      body: Center(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Image(
            fit: BoxFit.fill,
            image: AssetImage(pathImage),
          ),
        ),
      ),
    );
  }
}

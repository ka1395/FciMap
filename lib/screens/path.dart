import 'package:flutter/material.dart';

class PathScreen extends StatelessWidget {
  const PathScreen({super.key, required this.pathImage, required this.title});
  final String pathImage;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      //its a row with a column
      body: Center(
        child: SizedBox(
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

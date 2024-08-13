import 'package:flutter/material.dart';

class PathScreen extends StatefulWidget {
  const PathScreen({super.key, required this.pathImage, required this.title, required String pathImageLocation});
  final String pathImage;
  final String title;

  @override
  State<PathScreen> createState() => _PathScreenState();
}

class _PathScreenState extends State<PathScreen> {
 //final String pathImageLocation
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
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
            image: AssetImage(widget.pathImage),
          ),
        ),
      ),
    );
  }
}

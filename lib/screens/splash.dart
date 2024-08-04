import 'dart:async';

import 'package:flutter/material.dart';

import 'offices.dart';

class SplashScreen extends StatefulWidget {
  //route name for our screen
  static String routeName = 'SplashScreen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // بدء مؤقت لمدة 2 ثوانٍ
    Timer(const Duration(seconds: 2), () {
      // الانتقال إلى شاشة تسجيل الدخول بعد انتهاء المؤقت
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Offices()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    //scaffold color set to primary color in main in our text theme
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Icon(Icons.location_on,size: 200,),
      ),
    );
  }
}

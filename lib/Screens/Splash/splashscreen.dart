import 'dart:async';

import 'package:flutter/material.dart';

import '../../Widgets/uihelper.dart';
import '../OnBoarding/onboardingscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/whatsapp 1.png"),
            const SizedBox(
              height: 20,
            ),
            UiHelper.CustomText(text: "WhatsApp", height: 18,fontweight: FontWeight.bold)
          ],
        ),
      ),
    );
  }
}

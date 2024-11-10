import 'package:flutter/material.dart';

import '../../Widgets/uihelper.dart';
import '../Login/loginscreen.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/boarding.png"),
            const SizedBox(
              height: 20,
            ),
            UiHelper.CustomText(
                text: "Welcome to WhatsApp",
                height: 20,
                color: const Color(0XFF000000)),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "Read out", height: 14),
                UiHelper.CustomText(
                    text: " Privacy Policy. ",
                    height: 14,
                    color: const Color(0XFF0C42CC)),
                UiHelper.CustomText(
                    text: "Tap ''Agree and continue''", height: 14),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "to accept the", height: 14),
                UiHelper.CustomText(
                    text: "Teams of Service",
                    height: 14,
                    color: const Color(0XFF0C42CC))
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
          callback: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
          }, buttonname: "Agree and continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

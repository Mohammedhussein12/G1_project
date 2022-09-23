import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tripit_project/screens/on_boarding_screen/view.dart';

import '../../core/helper_methods.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //timer takes Duration and CallBack
    Timer(
      const Duration(
        seconds: 3,
      ),
      () {
        navigateTo(page: const OnBoardingScreen(), withHistory: false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Color(0xff4458DB),
              Color(0xff4A57DB),
              Color(0xff5655DB),
              Color(0xff5C54DB),
              Color(0xff6B51DB),
              Color(0xff774FDB),
              Color(0xff894CDB),
              Color(0xff9549DB),
              Color(0xffA447DB),
              Color(0xffAA46DB),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              "assets/images/Logo Color.png",
              width: 150,
              height: 150,
            )
          ],
        ),
      ),
    );
  }
}

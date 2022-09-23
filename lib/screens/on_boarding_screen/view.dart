import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tripit_project/core/helper_methods.dart';
import '../sign_in_screen/view.dart';
import 'controller.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (value) {
          controller.currentPage = value; // value رقم الصفحه الى انت روحتلها
          setState(() {});
        },
        children: List.generate(
          controller.models.length,
          (index) => SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset(
                    "assets/images/Logo Color_on_boarding.png",
                    height: 100,
                    width: 120,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    controller.models[controller.currentPage].image!,
                    height: 294.81,
                    width: 225.44,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 30.2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    controller.models[controller.currentPage].title!,
                    style: const TextStyle(
                        fontSize: 25,
                        color: Color(0xff4A4B4D),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    controller.models[controller.currentPage].subtitle!,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xff7C7D7E),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      controller.currentPage == 2
                          ? const SizedBox.shrink()
                          : TextButton(
                              onPressed: () {
                                navigateTo(page: SignInScreen());
                              },
                              child: const Text(
                                "SKIP",
                                style: TextStyle(
                                  color: Color(0xff111111),
                                ),
                              ),
                            ),
                      controller.currentPage == 2
                          ? const SizedBox.shrink()
                          : Row(
                              mainAxisSize: MainAxisSize.min,
                              children: List.generate(
                                controller.models.length,
                                (index) => Padding(
                                  padding:
                                      const EdgeInsetsDirectional.only(end: 5),
                                  child: CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Color(
                                        index == controller.currentPage
                                            ? 0xff4458DB
                                            : 0xffD6D6D6),
                                  ),
                                ),
                              ),
                            ),
                      TextButton(
                        onPressed: () {
                          if (controller.currentPage <
                              controller.models.length - 1) {
                            controller.currentPage++;
                            setState(() {});
                          }
                        },
                        child: controller.currentPage == 2
                            ? Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 120.0),
                                  child: TextButton(
                                    onPressed: () {
                                      navigateTo(page:  SignInScreen());
                                    },
                                    child: const Text(
                                      "let's go!",
                                      style: TextStyle(
                                          color: Color(0xff4458DB),
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                              )
                            : const Text(
                                "NEXT",
                                style: TextStyle(
                                    color: Color(0xff4458DB),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 112,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

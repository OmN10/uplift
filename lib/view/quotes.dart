import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uplift/controller/get.controller.dart';

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  final pageController = PageController(
    initialPage: 2,
    viewportFraction: 0.9,
    keepPage: true,
  );

  Get1controller controller = Get.put(Get1controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: controller.getColor,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1,
            width: MediaQuery.of(context).size.width / 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                  controller.getColor, // Apply a blue tint with 50% opacity
                  BlendMode.color, // Use color blend mode
                ),

                image: AssetImage("assets/Background.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 70),
                  SizedBox(
                    height: 500,
                    width: 500,
                    child: PageView(
                      controller: pageController,

                      children: [
                        Card(color: Colors.white, child: Container()),
                        Card(color: Colors.blueAccent, child: Container()),
                        Card(color: Colors.brown, child: Container()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * -0.4,
            right: MediaQuery.of(context).size.width * 0.35,
            child: Container(
              height: MediaQuery.of(context).size.height * 1,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/moti.png")),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.28,
            right: MediaQuery.of(context).size.width * -0.30,
            child: Container(
              height: MediaQuery.of(context).size.height * 1,
              width: MediaQuery.of(context).size.width * 1,

              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/ic_add.png")),
              ),
              child: GestureDetector(onTap: () {}),
            ),
          ),
        ],
      ),
    );
  }
}
